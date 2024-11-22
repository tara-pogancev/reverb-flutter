// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'audio_player_cubit.dart';

@immutable
sealed class AudioPlayerState {}

class Inactive extends AudioPlayerState {}

class Playing extends AudioPlayerState {
  final SongModel currentSong;
  final bool isPlaying;
  final bool isShuffle;
  final bool isRepeat;

  Playing({
    required this.currentSong,
    this.isPlaying = false,
    this.isShuffle = false,
    this.isRepeat = false,
  });

  Playing copyWith({
    SongModel? currentSong,
    bool? isPlaying,
    bool? isShuffle,
    bool? isRepeat,
  }) {
    return Playing(
      currentSong: currentSong ?? this.currentSong,
      isPlaying: isPlaying ?? this.isPlaying,
      isShuffle: isShuffle ?? this.isShuffle,
      isRepeat: isRepeat ?? this.isRepeat,
    );
  }
}
