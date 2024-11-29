import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoBackground extends StatefulWidget {
  const VideoBackground({super.key});

  @override
  State<VideoBackground> createState() => _VideoBackgroundState();
}

class _VideoBackgroundState extends State<VideoBackground> {
  late VideoPlayerController videoController;
  late Future<void> initializeVideoPlayerFuture;

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
    videoController.play();
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
          return VideoPlayer(videoController);
        } else {
          return Container();
        }
      },
    );
  }
}
