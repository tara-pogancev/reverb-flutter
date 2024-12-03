import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/domain/cubits/audio_player/audio_player_cubit.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';

class AudioControls extends StatefulWidget {
  const AudioControls({super.key});

  @override
  State<AudioControls> createState() => _AudioControlsState();
}

class _AudioControlsState extends State<AudioControls> {
  final AudioPlayerCubit cubit = IC.getIt();

  skipNext() {
    cubit.skipNext();
  }

  skipPrevious() {
    cubit.skipPrevious();
  }

  toggleShuffle() {
    cubit.toggleShuffle();
  }

  toggleLoopMode() {
    cubit.toggleLoopMode();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
      bloc: cubit,
      builder: (context, state) {
        return switch (state) {
          Inactive() => Container(),
          Playing() => Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () => toggleLoopMode(),
                  icon: Icon(
                    switch (state.loopMode) {
                      LoopMode.off => Icons.repeat,
                      LoopMode.one => Icons.repeat_one,
                      LoopMode.all => Icons.repeat_on,
                    },
                    color: AppColorScheme.of(context).mediumGray,
                  ),
                ),
                smallSpacer,
                IconButton(
                  onPressed: () => skipPrevious(),
                  icon: Icon(
                    Icons.skip_previous,
                    size: 35,
                    color: AppColorScheme.of(context).black,
                  ),
                ),
                IconButton.filled(
                  style: IconButton.styleFrom(
                    backgroundColor: AppColorScheme.of(context).black,
                    foregroundColor: AppColorScheme.of(context).white,
                    shadowColor: AppColorScheme.of(context).black,
                    elevation: 10,
                  ),
                  onPressed: () => cubit.togglePause(),
                  icon: Padding(
                    padding: const EdgeInsets.all(smallElementPadding),
                    child: Icon(
                      (state.isPlaying)
                          ? Icons.pause
                          : Icons.play_arrow_outlined,
                      size: 35,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => skipNext(),
                  icon: Icon(
                    Icons.skip_next,
                    size: 35,
                    color: AppColorScheme.of(context).black,
                  ),
                ),
                smallSpacer,
                IconButton(
                  onPressed: () => toggleShuffle(),
                  icon: Icon(
                    (state.isShuffle)
                        ? Icons.shuffle_on_outlined
                        : Icons.shuffle,
                    color: AppColorScheme.of(context).mediumGray,
                  ),
                ),
              ],
            ),
        };
      },
    );
  }
}
