import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/domain/cubits/song_list/song_list_cubit.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/router/app_router.dart';
import 'package:reverb/core/ui/style/app_text_styles.dart';

class ArtistCard extends StatelessWidget {
  const ArtistCard({super.key, required this.artist});

  final ArtistModel artist;

  void openArtistSongList(BuildContext context) {
    final SongListCubit songsCubit = IC.getIt();

    List<SongModel> songs = [];
    if (songsCubit.state is Loaded) {
      songs = (songsCubit.state as Loaded)
          .songs
          .where((s) => s.artistId == artist.id)
          .toList();
    }

    context
        .push(Routes.songList, extra: {"title": artist.artist, "songs": songs});
  }

  @override
  Widget build(BuildContext context) {
    const double audioArtworkSize = 40;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        title: Text(
          artist.artist,
          style: AppTextStyles.of(context).primary,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          Translations.of(context).artists.songsAndAlbums(
              tracks: artist.numberOfTracks ?? 0,
              albums: artist.numberOfAlbums ?? 0),
          style: AppTextStyles.of(context).secondary,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        leading: ClipOval(
          child: QueryArtworkWidget(
            id: artist.id,
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
        onTap: () => openArtistSongList(context),
      ),
    );
  }
}
