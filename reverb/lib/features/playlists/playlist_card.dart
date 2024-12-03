import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/domain/cubits/playlist/playlist_cubit.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/router/app_router.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';
import 'package:reverb/core/ui/style/app_text_styles.dart';
import 'package:reverb/core/ui/widgets/app_popup_menu_item.dart';
import 'package:reverb/features/filtered_list_widget/filtered_list_screen.dart';
import 'package:reverb/features/playlists/new_playlist_dialog.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({super.key, required this.playlist});

  final PlaylistModel playlist;

  void openPlaylistSongList(BuildContext context) async {
    final PlaylistCubit playlistCubit = IC.getIt();
    await playlistCubit.setActivePlaylist(playlist);

    if (context.mounted) {
      context.push(Routes.songList, extra: {
        "title": playlist.playlist,
        "type": FilteredSongListType.playlist,
        "songs": (playlistCubit.state as Loaded).selectedPlaylistSongs,
        "playlist": playlist,
      });
    }
  }

  deletePlaylist(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(Translations.of(context).playlists.deletePlaylist),
              content: Text(
                Translations.of(context).playlists.areYouSure(
                      name: playlist.playlist,
                    ),
              ),
              actions: [
                TextButton(
                  onPressed: () => context.pop(),
                  child: Text(
                    Translations.of(context).general.cancel,
                  ),
                ),
                FilledButton(
                  onPressed: () {
                    IC.getIt<PlaylistCubit>().deletePlaylist(playlist);
                    context.pop();
                  },
                  child: Text(
                    Translations.of(context).general.confirm,
                  ),
                ),
              ],
            ));
  }

  renamePlaylist(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => NewPlaylistDialog(
        playlist: playlist,
      ),
    );
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
        leading: Icon(
          Icons.queue_music_outlined,
          size: audioArtworkSize,
        ),
        onTap: () => openPlaylistSongList(context),
        trailing: (Platform.isAndroid)
            ? PopupMenuButton(
                icon: Icon(
                  Icons.more_horiz,
                  color: AppColorScheme.of(context).mediumGray,
                ),
                itemBuilder: (BuildContext context) => [
                  // This feature is not functional in the library
                  // AppPopupMenuItem.get(
                  //   context: context,
                  //   onPressed: () => renamePlaylist(context),
                  //   icon: Icons.edit_outlined,
                  //   text: Translations.of(context).playlists.rename,
                  // ),
                  AppPopupMenuItem.get(
                    context: context,
                    onPressed: () => deletePlaylist(context),
                    icon: Icons.delete_outline,
                    text: Translations.of(context).playlists.deletePlaylist,
                  ),
                ],
              )
            : null,
      ),
    );
  }
}
