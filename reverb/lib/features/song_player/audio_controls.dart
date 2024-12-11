import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/domain/cubits/audio_player/audio_player_cubit.dart';
import 'package:reverb/core/extensions/context_extensions.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';
import 'package:reverb/core/ui/style/gradients.dart';

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
                    color: lightAppColorScheme.lightGray,
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
                  padding: const EdgeInsets.all(0.0),
                  style: IconButton.styleFrom(
                    backgroundColor: AppColorScheme.of(context).black,
                    foregroundColor: lightAppColorScheme.white,
                    shadowColor: AppColorScheme.of(context).black,
                    elevation: 10,
                  ),
                  onPressed: () => cubit.togglePause(),
                  icon: Ink(
                    decoration: BoxDecoration(
                      gradient: (context.getIsDarkTheme()) ? appGradient : null,
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: SizedBox.square(
                      dimension: 65.0,
                      child: Icon(
                        (state.isPlaying)
                            ? Icons.pause
                            : Icons.play_arrow_outlined,
                        size: 40,
                      ),
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
                    color: lightAppColorScheme.lightGray,
                  ),
                ),
              ],
            ),
        };
      },
    );
  }
}
