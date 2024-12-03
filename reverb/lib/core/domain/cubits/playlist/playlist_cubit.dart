import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/domain/repositories/audio_query_repository.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/dialog_manager/dialog_manager.dart';

part 'playlist_state.dart';

class PlaylistCubit extends Cubit<PlaylistState> {
  final AudioQueryRepository audioQueryRepository = IC.getIt();

  PlaylistCubit() : super(Loading()) {
    fetchPlaylists();
  }

  void fetchPlaylists() async {
    try {
      if (await audioQueryRepository.hasPermission()) {
        final playlists = await audioQueryRepository.fetchPlaylistsFromDevice();
        emit(Loaded(playlists: playlists));
      } else {
        emit(PermissionRequired());
      }
    } on Exception {
      emit(Error());
      DialogManager.showGlobalSnackbar(
        snackbarText: (context) =>
            Translations.of(context).error.fetchingPlaylists,
      );
    }
  }

  Future setActivePlaylist(PlaylistModel playlist) async {
    List<SongModel> songs =
        await audioQueryRepository.getSongsFromPlaylist(playlist.id);

    if (state is Loaded) {
      emit((state as Loaded)
          .copyWith(selectedPlaylistSongs: songs, selectedPlaylist: playlist));
      return;
    }

    return;
  }

  void createPlaylist(String name) async {
    final result = await audioQueryRepository.createPlaylist(name);
    if (!result) {
      DialogManager.showGlobalSnackbar(
        snackbarText: (context) =>
            Translations.of(context).error.creatingPlaylist,
      );
    } else {
      fetchPlaylists();
      DialogManager.showGlobalSnackbar(
        snackbarText: (context) =>
            Translations.of(context).playlists.playlistCreated,
      );
    }
  }

  void addSongToPlaylist(SongModel song, PlaylistModel playlist) async {
    final isSongInPlaylist =
        await audioQueryRepository.isSongInPlaylist(playlist.id, song);

    if (!isSongInPlaylist) {
      final result =
          await audioQueryRepository.addToPlaylist(playlist.id, song.id);
      if (!result) {
        DialogManager.showGlobalSnackbar(
          snackbarText: (context) =>
              Translations.of(context).error.errorAddingSongToPlaylist,
        );
      } else {
        fetchPlaylists();
        DialogManager.showGlobalSnackbar(
          snackbarText: (context) =>
              Translations.of(context).playlists.addToPlaylist,
        );
      }
    } else {
      DialogManager.showGlobalSnackbar(
        snackbarText: (context) =>
            Translations.of(context).playlists.songAlreadyInPlaylist,
      );
    }
  }

  void renamePlaylist(PlaylistModel playlist, String name) async {
    final result = await audioQueryRepository.renamePlaylist(playlist.id, name);
    if (!result) {
      DialogManager.showGlobalSnackbar(
        snackbarText: (context) => Translations.of(context).error.generic,
      );
    } else {
      fetchPlaylists();
      DialogManager.showGlobalSnackbar(
        snackbarText: (context) =>
            Translations.of(context).playlists.playlistRenamed,
      );
    }
  }

  void deletePlaylist(PlaylistModel playlist) async {
    final result = await audioQueryRepository.deletePlaylist(playlist.id);
    if (!result) {
      DialogManager.showGlobalSnackbar(
        snackbarText: (context) => Translations.of(context).error.generic,
      );
    } else {
      fetchPlaylists();
      DialogManager.showGlobalSnackbar(
        snackbarText: (context) =>
            Translations.of(context).playlists.playlistDeleted,
      );
    }
  }

  void removeFromPlaylist(SongModel song, PlaylistModel playlist) async {
    final result =
        await audioQueryRepository.removeFromPlaylist(playlist.id, song.id);
    if (!result) {
      DialogManager.showGlobalSnackbar(
        snackbarText: (context) => Translations.of(context).error.generic,
      );
    } else {
      fetchPlaylists();
      DialogManager.showGlobalSnackbar(
        snackbarText: (context) =>
            Translations.of(context).songList.removedFromPlaylist,
      );
    }
  }
}
