import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/domain/cubits/playlist/playlist_cubit.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/widgets/app_error_widget.dart';
import 'package:reverb/core/ui/widgets/divider_with_title.dart';
import 'package:reverb/core/ui/widgets/empty_widget.dart';
import 'package:reverb/features/playlists/new_playlist_dialog.dart';
import 'package:reverb/features/playlists/playlist_card.dart';
import 'package:reverb/features/song_list/permission_required_widget.dart';

class PlaylistsScreen extends StatefulWidget {
  const PlaylistsScreen({super.key});

  @override
  State<PlaylistsScreen> createState() => _PlaylistsScreenState();
}

class _PlaylistsScreenState extends State<PlaylistsScreen> {
  final PlaylistCubit cubit = IC.getIt();

  void openNewPlaylistDialog() {
    showDialog(
      context: context,
      builder: (context) => NewPlaylistDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlaylistCubit, PlaylistState>(
      bloc: cubit,
      builder: (context, state) {
        return Stack(children: [
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: defaultPagePadding),
                child: DividerWithTitle(
                  title: Translations.of(context).playlists.playlists(
                      n: (state is Loaded) ? state.playlists.length : 0),
                ),
              ),
              Expanded(
                child: switch (state) {
                  Error() => AppErrorWidget(),
                  Loading() => CircularProgressIndicator(),
                  PermissionRequired() => PermissionRequiredWidget(),
                  Loaded() => (state.playlists.isNotEmpty)
                      ? ListView.builder(
                          padding: EdgeInsets.only(bottom: bottomPlayerBarPadding),
                          itemCount: state.playlists.length,
                          itemBuilder: (BuildContext context, int index) {
                            final playlist = state.playlists[index];
                            return PlaylistCard(playlist: playlist);
                          },
                        )
                      : EmptyWidget(
                          message:
                              Translations.of(context).playlists.noPlaylists,
                        ),
                },
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(defaultPagePadding),
              child: FloatingActionButton(
                onPressed: () => openNewPlaylistDialog(),
                child: Icon(
                  Icons.add,
                ),
              ),
            ),
          )
        ]);
      },
    );
  }
}
