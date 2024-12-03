// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/domain/cubits/audio_player/audio_player_cubit.dart';
import 'package:reverb/core/domain/cubits/playlist/playlist_cubit.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';
import 'package:reverb/core/ui/widgets/app_popup_menu_item.dart';
import 'package:reverb/core/ui/widgets/divider_with_title.dart';
import 'package:reverb/core/ui/widgets/empty_widget.dart';
import 'package:reverb/features/filtered_list_widget/filtered_list_screen.dart';
import 'package:reverb/features/song_list/song_card.dart';

class FilteredSongListWidget extends StatefulWidget {
  const FilteredSongListWidget({
    super.key,
    required this.songs,
    this.title,
    this.type = FilteredSongListType.none,
    this.playlist,
  });

  final List<SongModel> songs;
  final String? title;
  final FilteredSongListType type;
  final PlaylistModel? playlist;

  @override
  State<FilteredSongListWidget> createState() => _FilteredSongListWidgetState();
}

class _FilteredSongListWidgetState extends State<FilteredSongListWidget> {
  void playSongSelection(SongModel song) {
    final AudioPlayerCubit cubit = IC.getIt();
    cubit.playPlaylist(song, songs);
  }

  List<SongModel> songs = [];

  removeFromPlaylist(
    BuildContext context,
    SongModel song,
  ) {
    final PlaylistCubit cubit = IC.getIt();
    cubit.removeFromPlaylist(song, widget.playlist!);
    setState(() {
      songs.remove(song);
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      songs = widget.songs;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.title != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPagePadding),
            child: DividerWithTitle(
              title: widget.title!,
            ),
          ),
        Expanded(
          child: (songs.isNotEmpty)
              ? ListView.builder(
                  itemCount: songs.length,
                  itemBuilder: (BuildContext context, int index) {
                    final song = songs[index];
                    return SongCard(
                      song: song,
                      onTap: () => playSongSelection(song),
                      customTrailingWidget: (widget.type ==
                              FilteredSongListType.playlist)
                          ? PopupMenuButton(
                              icon: Icon(
                                Icons.more_horiz,
                                color: AppColorScheme.of(context).mediumGray,
                              ),
                              itemBuilder: (BuildContext context) => [
                                AppPopupMenuItem.get(
                                  context: context,
                                  onPressed: () =>
                                      removeFromPlaylist(context, song),
                                  icon: Icons.close_rounded,
                                  text: Translations.of(context)
                                      .songList
                                      .removedFromPlaylist,
                                ),
                              ],
                            )
                          : null,
                    );
                  },
                )
              : EmptyWidget(
                  message: Translations.of(context).playlists.noSongsInPlaylist,
                ),
        ),
      ],
    );
  }
}
