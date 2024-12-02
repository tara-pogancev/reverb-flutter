part of 'song_list_cubit.dart';

@immutable
sealed class SongListState {}

final class Loading extends SongListState {}

final class PermissionRequired extends SongListState {}

final class Error extends SongListState {}

final class Loaded extends SongListState {
  final List<SongModel> songs;
  final List<ArtistModel> artists;

  Loaded({
    this.songs = const [],
    this.artists = const [],
  });
}
