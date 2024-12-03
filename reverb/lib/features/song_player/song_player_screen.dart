import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/domain/cubits/audio_player/audio_player_cubit.dart';
import 'package:reverb/core/extensions/song_model_extensions.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/app_scaffold.dart';
import 'package:reverb/core/ui/style/app_text_styles.dart';
import 'package:reverb/core/ui/widgets/app_error_widget.dart';
import 'package:reverb/core/ui/widgets/glass_container.dart';
import 'package:reverb/features/home/header_reverb_switch.dart';
import 'package:reverb/features/song_player/audio_controls.dart';
import 'package:reverb/features/song_player/audio_waveform.dart';
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
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          Translations.of(context).player.nowPlaying,
        ),
      ),
      child: Stack(
        children: [
          VideoBackground(),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(largeElementPadding),
              child: Column(
                children: [
                  Text(
                    Translations.of(context).general.appName,
                    style: AppTextStyles.of(context).title,
                  ),
                  defaultSpacer,
                  Transform.scale(scale: 1.2, child: HeaderReverbSwitch()),
                ],
              ),
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
