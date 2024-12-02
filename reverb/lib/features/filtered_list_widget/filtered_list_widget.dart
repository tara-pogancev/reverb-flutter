import 'package:flutter/widgets.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/domain/cubits/audio_player/audio_player_cubit.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/widgets/divider_with_title.dart';
import 'package:reverb/core/ui/widgets/empty_widget.dart';
import 'package:reverb/features/song_list/song_card.dart';

class FilteredSongListWidget extends StatelessWidget {
  const FilteredSongListWidget({super.key, required this.songs, this.title});

  final List<SongModel> songs;
  final String? title;

  void playSongSelection(SongModel song) {
    final AudioPlayerCubit cubit = IC.getIt();
    cubit.playPlaylist(song, songs);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPagePadding),
            child: DividerWithTitle(
              title: title!,
            ),
          ),
        Expanded(
          child: (songs.isNotEmpty)
              ? ListView.builder(
                  itemCount: songs.length,
                  itemBuilder: (BuildContext context, int index) {
                    final song = songs[index];
                    return SongCard(
                        song: song, onTap: () => playSongSelection(song));
                  },
                )
              : EmptyWidget(
                  message: Translations.of(context).search.noSongs,
                ),
        ),
      ],
    );
  }
}
