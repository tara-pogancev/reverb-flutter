import 'package:flutter/material.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/domain/cubits/audio_player/audio_player_cubit.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';
import 'package:reverb/core/ui/style/app_text_styles.dart';
import 'package:reverb/core/ui/widgets/app_popup_menu_item.dart';

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

  renameSong(BuildContext context) {
    // TODO: Rename song logic
  }

  deleteSong(BuildContext context) {
    // TODO: Delete song logic
  }

  @override
  Widget build(BuildContext context) {
    const double audioArtworkSize = 40;
    final artistName = (song.artist != "<unknown>" || song.artist != null)
        ? song.artist
        : Translations.of(context).player.unknownArtist;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        title: Text(
          song.title + song.title,
          style: AppTextStyles.of(context).primary,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          artistName!,
          style: AppTextStyles.of(context).secondary,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        leading: ClipOval(
          child: QueryArtworkWidget(
            id: song.id,
            type: ArtworkType.AUDIO,
            artworkWidth: audioArtworkSize,
            artworkHeight: audioArtworkSize,
            size: 30,
            artworkBorder: BorderRadius.circular(30),
            nullArtworkWidget: Icon(
              Icons.image_not_supported_outlined,
              size: audioArtworkSize,
            ),
          ),
        ),
        onTap: () => playSong(),
        trailing: PopupMenuButton(
          icon: Icon(
            Icons.more_horiz,
            color: AppColorScheme.of(context).mediumGray,
          ),
          itemBuilder: (BuildContext context) => [
            AppPopupMenuItem.get(
              context: context,
              onPressed: () => renameSong(context),
              icon: Icons.edit,
              text: Translations.of(context).songList.rename,
            ),
            AppPopupMenuItem.get(
              context: context,
              onPressed: () => deleteSong(context),
              icon: Icons.delete_outline,
              text: Translations.of(context).songList.delete,
            ),
          ],
        ),
      ),
    );
  }
}
