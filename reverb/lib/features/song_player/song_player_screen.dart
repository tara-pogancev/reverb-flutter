import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/domain/cubits/audio_player/audio_player_cubit.dart';
import 'package:reverb/core/extensions/song_model_extensions.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/app_scaffold.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';
import 'package:reverb/core/ui/style/app_text_styles.dart';
import 'package:reverb/core/ui/widgets/app_error_widget.dart';
import 'package:reverb/core/ui/widgets/glass_container.dart';
import 'package:reverb/features/home/reverb_switch.dart';
import 'package:reverb/features/song_player/audio_controls.dart';
import 'package:reverb/features/song_player/audio_waveform.dart';
import 'package:reverb/features/song_player/current_queue.dart';
import 'package:reverb/features/song_player/video_background.dart';

class SongPlayerScreen extends StatefulWidget {
  const SongPlayerScreen({super.key});

  @override
  State<SongPlayerScreen> createState() => _SongPlayerScreenState();
}

class _SongPlayerScreenState extends State<SongPlayerScreen> {
  final AudioPlayerCubit cubit = IC.getIt();

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: null,
      endDrawer: Drawer(
          child: SafeArea(
              child: Padding(
        padding: const EdgeInsets.all(defaultPagePadding),
        child: CurrentQueue(),
      ))),
      child: Stack(
        children: [
          VideoBackground(),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppBar(
                  toolbarHeight: 80,
                  foregroundColor: lightAppColorScheme.white,
                  flexibleSpace: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                  backgroundColor:
                      AppColorScheme.of(context).white.withOpacity(0),
                  centerTitle: true,
                  title: Text(
                    Translations.of(context).player.nowPlaying,
                  ),
                ),
                defaultSpacer,
                Text(
                  Translations.of(context).general.appName,
                  style: AppTextStyles.of(context)
                      .title
                      .copyWith(color: lightAppColorScheme.white),
                ),
                defaultSpacer,
                Transform.scale(scale: 1.2, child: ReverbSwitch()),
              ],
            ),
          ),
          BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
            bloc: cubit,
            builder: (context, state) {
              return switch (state) {
                Inactive() => AppErrorWidget(),
                Playing() => Padding(
                    padding: const EdgeInsets.only(bottom: defaultPagePadding),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: GlassContainer(
                        padding: EdgeInsets.all(defaultPagePadding),
                        innerPadding: EdgeInsets.symmetric(
                            horizontal: defaultElementPadding,
                            vertical: defaultElementPadding * 2),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              state.currentSong.title,
                              style: AppTextStyles.of(context).primary.copyWith(
                                    fontSize: 18,
                                  ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              state.currentSong.getArtist(context),
                              style: AppTextStyles.of(context).secondary,
                              textAlign: TextAlign.center,
                            ),
                            defaultSpacer,
                            AudioWaveform(
                              currentSong: state.currentSong,
                            ),
                            defaultSpacer,
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: defaultPagePadding,
                              ),
                              child: AudioControls(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              };
            },
          ),
        ],
      ),
    );
  }
}
