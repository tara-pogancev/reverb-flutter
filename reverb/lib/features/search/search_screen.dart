import 'package:flutter/material.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/domain/cubits/song_list/song_list_cubit.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/widgets/divider_with_title.dart';
import 'package:reverb/features/song_list/song_list_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final SongListCubit cubit = IC.getIt();

  String? searchValue;

  List<SongModel> filteredSongs = [];
  List<SongModel> allSongs = [];

  @override
  void initState() {
    super.initState();

    if (cubit.state is Loaded) {
      setState(() {
        filteredSongs = (cubit.state as Loaded).songs;
        allSongs = (cubit.state as Loaded).songs;
      });
    }
  }

  void filterSongs(String? searchText) {
    setState(() {
      searchValue = searchText?.trim() ?? searchText;
    });

    if (searchValue != null && searchValue != "") {
      filteredSongs = allSongs
          .where((song) =>
              song.title.toLowerCase().contains(searchValue!.toLowerCase()) ||
              (song.artist ?? "")
                  .toLowerCase()
                  .contains(searchValue!.toLowerCase()) ||
              (song.album ?? "")
                  .toLowerCase()
                  .contains(searchValue!.toLowerCase()))
          .toList();
    } else {
      setState(
        () {
          filteredSongs = allSongs;
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        smallSpacer,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPagePadding),
          child: TextFormField(
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text(
                  Translations.of(context).search.search,
                ),
                hintText: Translations.of(context).search.hint,
                icon: Icon(Icons.search),
              ),
              onChanged: (value) => filterSongs(value)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: defaultPagePadding,
            vertical: defaultElementPadding,
          ),
          child: DividerWithTitle(
            title: Translations.of(context).search.results(
                  n: filteredSongs.length,
                ),
          ),
        ),
        Expanded(
          child: SongListScreen(songs: filteredSongs),
        ),
      ],
    );
  }
}
