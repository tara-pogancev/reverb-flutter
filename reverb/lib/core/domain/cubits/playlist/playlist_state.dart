// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'playlist_cubit.dart';

@immutable
sealed class PlaylistState {}

final class PermissionRequired extends PlaylistState {}

final class Error extends PlaylistState {}

final class Loading extends PlaylistState {}

final class Loaded extends PlaylistState {
  final List<PlaylistModel> playlists;
  final List<SongModel> selectedPlaylistSongs;
  final PlaylistModel? selectedPlaylist;

  Loaded({
    this.playlists = const [],
    this.selectedPlaylistSongs = const [],
    this.selectedPlaylist,
  });

  Loaded copyWith({
    List<PlaylistModel>? playlists,
    List<SongModel>? selectedPlaylistSongs,
    PlaylistModel? selectedPlaylist,
  }) {
    return Loaded(
      playlists: playlists ?? this.playlists,
      selectedPlaylistSongs:
          selectedPlaylistSongs ?? this.selectedPlaylistSongs,
      selectedPlaylist: selectedPlaylist ?? this.selectedPlaylist,
    );
  }
}
