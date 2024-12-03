import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:meta/meta.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/domain/cubits/song_list/song_list_cubit.dart';
import 'package:reverb/core/injection_container.dart';

part 'audio_player_state.dart';

class AudioPlayerCubit extends Cubit<AudioPlayerState> {
  final AudioPlayer player = IC.getIt();
  final SongListCubit songListCubit = IC.getIt();

  AudioPlayerCubit() : super(Inactive()) {
    _setupListeners();
  }

  void _setupListeners() {
    // Listen for changes in the current song index
    player.currentIndexStream.listen((index) {
      if (index != null && state is Playing) {
        final song = (state as Playing).playlist[index];

        emit((state as Playing).copyWith(currentSong: song));
      }
    });

    // Listen for when playback completes
    player.processingStateStream.listen((state) {
      if (state == ProcessingState.completed) {
        emit(Inactive());
      }
    });

    // Listen for play/pause state changes
    player.playingStream.listen((isPlaying) {
      if (state is Playing) {
        emit((state as Playing).copyWith(isPlaying: isPlaying));
      }
    });
  }

  void playSong(SongModel song) async {
    // Create a list of audio sources for all songs
    if (songListCubit.state is Loaded) {
      final audioSources = (songListCubit.state as Loaded)
          .songs
          .map((s) => AudioSource.uri(
                Uri.file(s.data),
                tag: MediaItem(
                  id: s.id.toString(),
                  title: s.title,
                  artist: s.artist,
                ),
              ))
          .toList();

      final queue = ConcatenatingAudioSource(children: audioSources);
      await player.setAudioSource(queue);

      // Find the index of the selected song
      final playlist = (songListCubit.state as Loaded).songs;
      final songIndex = playlist.indexOf(song);

      if (songIndex != -1) {
        await player.seek(Duration.zero, index: songIndex);
        player.play();

        emit(Playing(currentSong: song, playlist: playlist, isPlaying: true));
      }
    }
  }

  void playPlaylist(SongModel song, List<SongModel> playlistSongs) async {
    final audioSources = playlistSongs
        .map(
          (s) => AudioSource.uri(
            Uri.file(s.data),
            tag: MediaItem(
              id: s.id.toString(),
              title: s.title,
              artist: s.artist,
            ),
          ),
        )
        .toList();

    final queue = ConcatenatingAudioSource(children: audioSources);
    await player.setAudioSource(queue);

    final songIndex = playlistSongs.indexOf(song);

    if (songIndex != -1) {
      await player.seek(Duration.zero, index: songIndex);
      player.play();

      emit(
          Playing(currentSong: song, playlist: playlistSongs, isPlaying: true));
    }
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

  void skipNext() {
    if (player.hasNext) {
      player.seekToNext();
    } else {
      player.stop();
    }
  }

  void skipPrevious() {
    if (player.hasPrevious) {
      player.seekToPrevious();
    } else {
      player.stop();
    }
  }

  void toggleShuffle() async {
    if (state is Playing) {
      await player.setShuffleModeEnabled(!player.shuffleModeEnabled);
      emit((state as Playing).copyWith(isShuffle: player.shuffleModeEnabled));
    }
  }

  void toggleLoopMode() async {
    if (state is Playing) {
      if (player.loopMode == LoopMode.off) {
        await player.setLoopMode(LoopMode.all);
      } else if (player.loopMode == LoopMode.all) {
        await player.setLoopMode(LoopMode.one);
      } else if (player.loopMode == LoopMode.one) {
        await player.setLoopMode(LoopMode.off);
      }
      emit((state as Playing).copyWith(loopMode: player.loopMode));
    }
  }
}
