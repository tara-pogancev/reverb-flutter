import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reverb/core/domain/cubits/audio_player/audio_player_cubit.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:video_player/video_player.dart';

class VideoBackground extends StatefulWidget {
  const VideoBackground({super.key});

  @override
  State<VideoBackground> createState() => _VideoBackgroundState();
}

class _VideoBackgroundState extends State<VideoBackground> {
  late VideoPlayerController videoController;
  late Future<void> initializeVideoPlayerFuture;

  final AudioPlayerCubit cubit = IC.getIt();

  @override
  void initState() {
    super.initState();

    videoController = VideoPlayerController.asset(
      "assets/wave_1.mp4",
      videoPlayerOptions: VideoPlayerOptions(
        mixWithOthers: true,
      ),
    );
    initializeVideoPlayerFuture = videoController.initialize();
    videoController.setLooping(true);

    if (cubit.state is Playing && (cubit.state as Playing).isPlaying) {
      videoController.play();
    }
  }

  @override
  void dispose() {
    videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return BlocListener<AudioPlayerCubit, AudioPlayerState>(
            bloc: cubit,
            listener: (context, state) {
              if (state is Playing) {
                if (state.isPlaying) {
                  videoController.play();
                } else {
                  videoController.pause();
                }
              }
            },
            child: VideoPlayer(videoController),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
