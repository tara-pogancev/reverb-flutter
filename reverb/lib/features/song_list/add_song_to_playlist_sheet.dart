// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/domain/cubits/playlist/playlist_cubit.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/style/app_text_styles.dart';
import 'package:reverb/core/ui/widgets/app_error_widget.dart';

class AddSongToPlaylistSheet extends StatefulWidget {
  const AddSongToPlaylistSheet({
    super.key,
    required this.song,
  });

  final SongModel song;

  @override
  State<AddSongToPlaylistSheet> createState() => _AddSongToPlaylistSheetState();
}

class _AddSongToPlaylistSheetState extends State<AddSongToPlaylistSheet> {
  final PlaylistCubit cubit = IC.getIt();

  addToPlaylist(PlaylistModel playlist) {
    cubit.addSongToPlaylist(widget.song, playlist);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPagePadding),
      child: Column(
        children: [
          Text(
            Translations.of(context).playlists.addToPlaylist,
            style: AppTextStyles.of(context).primary,
          ),
          Flexible(
            child: BlocBuilder<PlaylistCubit, PlaylistState>(
              bloc: cubit,
              builder: (context, state) {
                return switch (state) {
                  PermissionRequired() => AppErrorWidget(),
                  Error() => AppErrorWidget(),
                  Loading() => CircularProgressIndicator(),
                  Loaded() => Column(
                      children: [
                        Flexible(
                          child: ListView.separated(
                            shrinkWrap: true,
                            itemCount: state.playlists.length,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return smallSpacer;
                            },
                            itemBuilder: (BuildContext context, int index) {
                              final playlist = state.playlists[index];
                              return ListTile(
                                onTap: () => addToPlaylist(playlist),
                                title: Text(playlist.playlist),
                                subtitle: Text(
                                  Translations.of(context).playlists.tracks(
                                        n: playlist.numOfSongs,
                                      ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                };
              },
            ),
          ),
          defaultSpacer,
          TextButton(
            onPressed: () => context.pop(),
            child: Text(
              Translations.of(context).general.cancel,
            ),
          ),
        ],
      ),
    );
  }
}
