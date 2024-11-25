import 'package:flutter/material.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/ui/style/app_text_styles.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({super.key, required this.playlist});

  final PlaylistModel playlist;

  void playPlaylist() {
    // TODO: Implement playing music functionality
  }

  @override
  Widget build(BuildContext context) {
    const double audioArtworkSize = 40;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        title: Text(
          playlist.playlist,
          style: AppTextStyles.of(context).primary,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          Translations.of(context).playlists.tracks(
                n: playlist.numOfSongs,
              ),
          style: AppTextStyles.of(context).secondary,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        leading: ClipOval(
          child: QueryArtworkWidget(
            id: playlist.id,
            type: ArtworkType.AUDIO,
            artworkWidth: audioArtworkSize,
            artworkHeight: audioArtworkSize,
            quality: 30,
            size: 30,
            artworkBorder: BorderRadius.circular(30),
            nullArtworkWidget: Icon(
              Icons.image_not_supported_outlined,
              size: audioArtworkSize,
            ),
          ),
        ),
        onTap: () => playPlaylist(),
      ),
    );
  }
}