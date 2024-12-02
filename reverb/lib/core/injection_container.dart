import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:just_audio/just_audio.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/domain/cubits/audio_effects/audio_effects_cubit.dart';
import 'package:reverb/core/domain/cubits/audio_player/audio_player_cubit.dart';
import 'package:reverb/core/domain/cubits/playlist/playlist_cubit.dart';
import 'package:reverb/core/domain/cubits/song_list/song_list_cubit.dart';
import 'package:reverb/core/domain/repositories/audio_query_repository.dart';
import 'package:reverb/core/router/app_router.dart';
import 'package:reverb/core/ui/dialog_manager/dialog_manager.dart';

class IC {
  static final getIt = GetIt.instance;

  static Future<void> setUp() async {
    // Set the router and dialog manager

    getIt.registerLazySingleton<GoRouter>(() => AppRouter.router());
    getIt.registerLazySingleton<DialogManager>(
        () => DialogManager(IC.getIt<GoRouter>().configuration.navigatorKey));

    // Setup repositories and services

    getIt.registerLazySingleton<AudioQueryRepository>(
        () => AudioQueryRepository(audioQuery: OnAudioQuery()));

    getIt.registerLazySingleton<AudioPlayer>(() {
      final player = AudioPlayer();
      player.setLoopMode(LoopMode.all);
      return player;
    });

    // Setup bloc & cubit

    getIt.registerLazySingleton(() => SongListCubit());
    getIt.registerLazySingleton(() => AudioPlayerCubit());
    getIt.registerLazySingleton(() => AudioEffectsCubit());
    getIt.registerLazySingleton(() => PlaylistCubit());
  }
}
