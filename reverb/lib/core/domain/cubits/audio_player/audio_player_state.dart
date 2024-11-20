part of 'audio_player_cubit.dart';

@immutable
sealed class AudioPlayerState {}

final class Inactive extends AudioPlayerState {}

final class Error extends AudioPlayerState {}

final class Playing extends AudioPlayerState {
  final SongModel currentSong;
  final bool isPlaying;
  final bool isShuffle;
  final bool isRepeat;

  Playing(
      {required this.currentSong,
      this.isPlaying = false,
      this.isShuffle = false,
      this.isRepeat = false});
}
