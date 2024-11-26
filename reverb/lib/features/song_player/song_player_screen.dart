import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/domain/cubits/audio_player/audio_player_cubit.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/app_scaffold.dart';
import 'package:reverb/core/ui/widgets/app_error_widget.dart';
import 'package:reverb/features/song_player/audio_controls.dart';

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
      child: BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
        bloc: cubit,
        builder: (context, state) {
          return switch (state) {
            Inactive() => AppErrorWidget(),
            Playing() => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipOval(
                    child: QueryArtworkWidget(
                      id: state.currentSong.id,
                      type: ArtworkType.AUDIO,
                      artworkWidth: MediaQuery.of(context).size.width * 0.7,
                      artworkHeight: MediaQuery.of(context).size.width * 0.7,
                      size: 100,
                      artworkBorder: BorderRadius.circular(defaultBorderRadius),
                      nullArtworkWidget: Icon(
                        Icons.image_not_supported_outlined,
                        size: 100,
                      ),
                    ),
                  ),
                  defaultSpacer,
                  Padding(
                    padding: const EdgeInsets.all(defaultPagePadding),
                    child: AudioControls(),
                  )
                ],
              ),
          };
        },
      ),
    );
  }
}
