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
import 'package:reverb/core/ui/widgets/glass_container.dart';

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
            Inactive() => Text(""),
            Playing() => SizedBox(
                width: double.infinity,
                child: InkWell(
                  onTap: () => context.push(Routes.songPlayer),
                  child: GlassContainer(
                    padding: EdgeInsets.zero,
                    innerPadding: const EdgeInsets.symmetric(
                        vertical: defaultElementPadding,
                        horizontal: defaultBorderRadius),
                    tintColor:
                        AppColorScheme.of(context).black.withOpacity(0.85),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        defaultBorderRadius,
                      ),
                      topRight: Radius.circular(
                        defaultBorderRadius,
                      ),
                    ),
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
                                maxLines: 1,
                                overflow: TextOverflow.fade,
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
                                maxLines: 1,
                                overflow: TextOverflow.fade,
                              ),
                            ],
                          ),
                        ),
                        defaultSpacer,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () => cubit.skipNext(),
                              icon: Icon(Icons.skip_next),
                              color: AppColorScheme.of(context).white,
                            ),
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
