part of 'song_list_cubit.dart';

@immutable
sealed class SongListState {}

final class SongListInitial extends SongListState {}

final class Loading extends SongListState {}

final class PermissionRequired extends SongListState {}

final class Error extends SongListState {}

final class Loaded extends SongListState {
  final List<SongModel> songs;

  Loaded({this.songs = const []});
}
