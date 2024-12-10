import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/domain/cubits/audio_player/audio_player_cubit.dart';
import 'package:reverb/core/extensions/song_model_extensions.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';
import 'package:reverb/core/ui/style/app_text_styles.dart';
import 'package:reverb/core/ui/widgets/divider_with_title.dart';
import 'package:reverb/core/ui/widgets/empty_widget.dart';

class CurrentQueue extends StatefulWidget {
  const CurrentQueue({super.key});

  @override
  State<CurrentQueue> createState() => _CurrentQueueState();
}

class _CurrentQueueState extends State<CurrentQueue> {
  final AudioPlayerCubit cubit = IC.getIt();

  List<SongModel> getQueueSongs(AudioPlayerState state) {
    if (state is Playing) {
      int currentIndex = state.playlist.indexOf(state.currentSong);

      List<SongModel> reorderedPlaylist = [
        ...(state.playlist)
            .sublist(currentIndex), // Elements from current to the end
        ...(state.playlist)
            .sublist(0, currentIndex) // Elements before the current
      ];

      return reorderedPlaylist;
    } else {
      return [];
    }
  }

  void removeSongFromQueue(SongModel song) {
    cubit.removeSongFromQueue(song);
  }

  void playSong(SongModel song) {
    cubit.playSongFromQueue(song);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          Translations.of(context).player.playingQueue,
          style: AppTextStyles.of(context).title.copyWith(fontSize: 18),
        ),
        defaultSpacer,
        Flexible(
          child: BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
            bloc: cubit,
            builder: (context, state) {
              return (state is Playing)
                  ? ListView.separated(
                      itemCount: getQueueSongs(state).length +
                          ((getQueueSongs(state).length == 1) ? 1 : 2),
                      separatorBuilder: (BuildContext context, int index) {
                        return smallSpacer;
                      },
                      itemBuilder: (BuildContext context, int index) {
                        switch (index) {
                          case 0:
                            return DividerWithTitle(
                                title:
                                    Translations.of(context).player.nowPlaying);
                          case 1:
                            final song = getQueueSongs(state)[index - 1];
                            return ListTile(
                              title: Text(
                                song.title,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                song.getArtist(context),
                              ),
                            );
                          case 2:
                            return DividerWithTitle(
                                title: Translations.of(context)
                                    .player
                                    .nextInQueue);
                          default:
                            final song = getQueueSongs(state)[index - 2];
                            return Dismissible(
                              key: Key(
                                song.id.toString(),
                              ),
                              direction: (index == 0)
                                  ? DismissDirection.none
                                  : DismissDirection.endToStart,
                              background: Container(
                                color: AppColorScheme.of(context).lightGray,
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                        defaultPagePadding),
                                    child: Icon(
                                      Icons.delete_outline,
                                    ),
                                  ),
                                ),
                              ),
                              onDismissed: (direction) =>
                                  removeSongFromQueue(song),
                              child: ListTile(
                                title: Text(song.title),
                                onTap: () => playSong(song),
                                subtitle: Text(
                                  song.getArtist(context),
                                ),
                              ),
                            );
                        }
                      },
                    )
                  : EmptyWidget();
            },
          ),
        ),
      ],
    );
  }
}
