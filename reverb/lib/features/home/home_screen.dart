import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/ui/app_scaffold.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final OnAudioQuery _audioQuery = OnAudioQuery();
  List<SongModel> songs = [];

  final player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    requestPermission();
  }

  void requestPermission() async {
    final status = await _audioQuery.checkAndRequest();

    if (status) {
      loadSounds();
    }
  }

  void loadSounds() async {
    List<SongModel> result = await _audioQuery.querySongs(ignoreCase: true);
    setState(() {
      songs = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Column(
        children: [
          Flexible(
            child: ListView.builder(
              itemCount: songs.length,
              itemBuilder: (BuildContext context, int index) {
                final song = songs[index];
                return ListTile(
                  title: Text(song.title),
                  subtitle: Text(song.artist ?? ''),
                  onTap: () async {
                    final duration = await player.setFilePath(song.data);
                    player.play();
                    player.setPitch(0.5);
                    player.setSpeed(0.7);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
