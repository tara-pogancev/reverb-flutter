import 'package:flutter/material.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/ui/app_scaffold.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';
import 'package:reverb/features/filtered_list_widget/filtered_list_widget.dart';
import 'package:reverb/features/home/player_bar.dart';

class FilteredListScreen extends StatelessWidget {
  const FilteredListScreen(
      {super.key,
      required this.songs,
      required this.title,
      this.type = FilteredSongListType.none,
      this.playlist});

  final List<SongModel> songs;
  final String title;
  final FilteredSongListType type;
  final PlaylistModel? playlist;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        backgroundColor: AppColorScheme.of(context).white.withAlpha(25),
        title: Text(title),
      ),
      child: Column(
        children: [
          Expanded(
            child: FilteredSongListWidget(
              songs: songs,
              type: type,
              playlist: playlist,
            ),
          ),
          PlayerBar(),
        ],
      ),
    );
  }
}

enum FilteredSongListType { none, playlist, artist }
