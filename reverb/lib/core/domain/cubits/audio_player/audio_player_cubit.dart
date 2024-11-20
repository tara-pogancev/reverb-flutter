import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:meta/meta.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/injection_container.dart';

part 'audio_player_state.dart';

class AudioPlayerCubit extends Cubit<AudioPlayerState> {
  final AudioPlayer player = IC.getIt();

  AudioPlayerCubit() : super(AudioPlayerInitial());

  void playSong(SongModel song) async {
    await player.setFilePath(song.data);
    player.play();
    player.setPitch(0.5);
    player.setSpeed(0.7);

    emit(Playing());
  }
}
