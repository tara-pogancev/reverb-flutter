import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/domain/cubits/audio_player/audio_player_cubit.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/router/app_router.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';
import 'package:reverb/core/ui/style/app_text_styles.dart';

class PlayerBar extends StatefulWidget {
  const PlayerBar({super.key});

  @override
  State<PlayerBar> createState() => _PlayerBarState();
}

class _PlayerBarState extends State<PlayerBar> {
  final AudioPlayerCubit cubit = IC.getIt();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
      bloc: cubit,
      builder: (context, state) {
        return AnimatedSwitcher(
          duration: Durations.long1,
          transitionBuilder: (child, animation) {
            return FadeTransition(opacity: animation, child: child);
          },
          child: switch (state) {
            Inactive() => Container(),
            Playing() => InkWell(
                onTap: () => context.push(Routes.songPlayer),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColorScheme.of(context).black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        defaultBorderRadius,
                      ),
                      topRight: Radius.circular(
                        defaultBorderRadius,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: defaultElementPadding,
                        horizontal: defaultBorderRadius),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.currentSong.title,
                                style: AppTextStyles.of(context)
                                    .primary
                                    .copyWith(
                                        color:
                                            AppColorScheme.of(context).white),
                              ),
                              Text(
                                state.currentSong.artist ??
                                    Translations.of(context)
                                        .player
                                        .unknownArtist,
                                style: AppTextStyles.of(context)
                                    .secondary
                                    .copyWith(
                                        color: AppColorScheme.of(context)
                                            .mediumGray),
                              ),
                            ],
                          ),
                        ),
                        defaultSpacer,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // IconButton(
                            //   onPressed: () {},
                            //   icon: Icon(Icons.skip_previous),
                            //   color: AppColorScheme.of(context).white,
                            // ),
                            IconButton.filled(
                              style: IconButton.styleFrom(
                                  backgroundColor:
                                      AppColorScheme.of(context).white,
                                  foregroundColor:
                                      AppColorScheme.of(context).black),
                              onPressed: () => cubit.togglePause(),
                              icon: Icon(
                                (state.isPlaying)
                                    ? Icons.pause
                                    : Icons.play_arrow_outlined,
                              ),
                            ),
                            // IconButton(
                            //   onPressed: () {},
                            //   icon: Icon(Icons.skip_next),
                            //   color: AppColorScheme.of(context).white,
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          },
        );
      },
    );
  }
}
