import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/domain/cubits/audio_player/audio_player_cubit.dart';
import 'package:reverb/core/extensions/song_model_extensions.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/style/app_text_styles.dart';
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
                      itemCount: getQueueSongs(state).length,
                      separatorBuilder: (BuildContext context, int index) {
                        return smallSpacer;
                      },
                      itemBuilder: (BuildContext context, int index) {
                        final song = getQueueSongs(state)[index];
                        return ListTile(
                          title: Text(song.title),
                          subtitle: Text(
                            song.getArtist(context),
                          ),
                          leading: (index == 0) ? Icon(Icons.play_arrow) : null,
                        );
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
