import 'package:flutter/material.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/domain/cubits/audio_player/audio_player_cubit.dart';
import 'package:reverb/core/injection_container.dart';

class SongCard extends StatelessWidget {
  const SongCard({super.key, required this.song});
  final SongModel song;

  void playSong() async {
    final AudioPlayerCubit cubit = IC.getIt();
    cubit.playSong(song);
  }

  void toggleFavorite() {
    // TODO: Favorite logic
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(song.title + song.title),
      subtitle: (song.artist != null) ? Text(song.artist!) : null,
      leading: QueryArtworkWidget(id: song.id, type: ArtworkType.AUDIO),
      onTap: () => playSong(),
      // TODO: Favorite logic
      // trailing: IconButton(
      //   onPressed: () => toggleFavorite(),
      //   icon: Icon(
      //     (false) ? Icons.favorite : Icons.favorite_outline,
      //   ),
      // ),
    );
  }
}
