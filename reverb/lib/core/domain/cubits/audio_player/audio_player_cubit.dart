import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:meta/meta.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/injection_container.dart';

part 'audio_player_state.dart';

class AudioPlayerCubit extends Cubit<AudioPlayerState> {
  final AudioPlayer player = IC.getIt();

  AudioPlayerCubit() : super(Inactive());

  void playSong(SongModel song) async {
    await player.setFilePath(song.data);
    player.play();

    emit(Playing(currentSong: song, isPlaying: true));
  }

  togglePause() {
    if (state is Playing) {
      final currentState = state as Playing;
      if (player.playing) {
        player.pause();
        emit(currentState.copyWith(isPlaying: false));
      } else {
        player.play();
        emit(currentState.copyWith(isPlaying: true));
      }
    }
  }
}
