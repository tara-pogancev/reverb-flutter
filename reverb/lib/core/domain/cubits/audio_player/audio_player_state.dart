part of 'audio_player_cubit.dart';

@immutable
sealed class AudioPlayerState {}

final class AudioPlayerInitial extends AudioPlayerState {}

final class Loading extends AudioPlayerState {}

final class Error extends AudioPlayerState {}

final class Playing extends AudioPlayerState {
  final SongModel? currentSong;

  Playing({this.currentSong});
}

final class Inactive extends AudioPlayerState {}
