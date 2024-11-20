import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reverb/core/domain/cubits/song_list/song_list_cubit.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/app_scaffold.dart';
import 'package:reverb/features/home/song_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final SongListCubit songListCubit = IC.getIt();

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title: Text(Translations.of(context).general.appName),
      ),
      child: Column(
        children: [
          Flexible(
            child: BlocBuilder<SongListCubit, SongListState>(
              bloc: songListCubit,
              builder: (context, state) {
                return switch (state) {
                  SongListInitial() => Icon(Icons.question_answer),
                  Loading() => CircularProgressIndicator(),
                  PermissionRequired() => Icon(Icons.question_answer),
                  Error() => Icon(Icons.question_answer),
                  Loaded() => ListView.builder(
                      itemCount: state.songs.length,
                      itemBuilder: (BuildContext context, int index) {
                        final song = state.songs[index];
                        return SongCard(song: song);
                      },
                    ),
                };
              },
            ),
          ),
        ],
      ),
    );
  }
}
