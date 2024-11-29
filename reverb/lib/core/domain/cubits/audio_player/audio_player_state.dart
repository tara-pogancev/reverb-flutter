// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'audio_player_cubit.dart';

@immutable
sealed class AudioPlayerState {}

class Inactive extends AudioPlayerState {}

class Playing extends AudioPlayerState {
  final SongModel currentSong;
  final List<SongModel> playlist;
  final bool isPlaying;
  final bool isShuffle;
  final LoopMode loopMode;

  Playing({
    required this.currentSong,
    this.playlist = const [],
    this.isPlaying = false,
    this.isShuffle = false,
    this.loopMode = LoopMode.all,
  });

  Playing copyWith({
    SongModel? currentSong,
    List<SongModel>? playlist,
    bool? isPlaying,
    bool? isShuffle,
    LoopMode? loopMode,
  }) {
    return Playing(
      currentSong: currentSong ?? this.currentSong,
      playlist: playlist ?? this.playlist,
      isPlaying: isPlaying ?? this.isPlaying,
      isShuffle: isShuffle ?? this.isShuffle,
      loopMode: loopMode ?? this.loopMode,
    );
  }
}
