import 'dart:async';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/style/app_text_styles.dart';

class AudioWaveform extends StatefulWidget {
  const AudioWaveform({super.key, required this.currentSong});

  final SongModel currentSong;

  @override
  State<AudioWaveform> createState() => _AudioWaveformState();
}

class _AudioWaveformState extends State<AudioWaveform> {
  final AudioPlayer player = IC.getIt();

  Duration currentPosition = Duration();

  StreamSubscription<Duration>? positionSubscription;

  @override
  void initState() {
    super.initState();
    setupListener();
  }

  void setupListener() {
    positionSubscription = player.positionStream
        .distinct((prev, curr) =>
            prev.inSeconds == curr.inSeconds) // Emit only if the second changes
        .listen((position) {
      setState(() {
        currentPosition = position;
      });
    });
  }

  String formatDuration(Duration duration) {
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    positionSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          constraints: BoxConstraints.tightFor(height: 15),
          child: SliderTheme(
            data: SliderThemeData(
              thumbShape: RoundSliderThumbShape(
                enabledThumbRadius: 6,
              ),
            ),
            child: Slider(
              value: currentPosition.inSeconds.toDouble(),
              max: player.duration?.inSeconds.toDouble() ?? 1,
              onChanged: (value) {
                player.seek(Duration(seconds: value.toInt()));
              },
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            defaultSpacer,
            Text(
              formatDuration(currentPosition),
              style: AppTextStyles.of(context).secondary,
            ),
            Spacer(),
            Text(
              formatDuration(player.duration ?? Duration()),
              style: AppTextStyles.of(context).secondary,
            ),
            defaultSpacer,
          ],
        ),
      ],
    );
  }
}
