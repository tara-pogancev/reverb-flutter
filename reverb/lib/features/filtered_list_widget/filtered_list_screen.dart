import 'package:flutter/material.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/ui/app_scaffold.dart';
import 'package:reverb/features/filtered_list_widget/filtered_list_widget.dart';
import 'package:reverb/features/home/player_bar.dart';

class FilteredListScreen extends StatelessWidget {
  const FilteredListScreen(
      {super.key, required this.songs, required this.title});

  final List<SongModel> songs;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      child: Column(
        children: [
          Expanded(
            child: FilteredSongListWidget(songs: songs),
          ),
          PlayerBar(),
        ],
      ),
    );
  }
}
