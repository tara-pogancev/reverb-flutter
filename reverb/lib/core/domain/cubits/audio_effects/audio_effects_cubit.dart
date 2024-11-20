import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:reverb/core/injection_container.dart';

part 'audio_effects_state.dart';

class AudioEffectsCubit extends Cubit<AudioEffectsState> {
  AudioEffectsCubit() : super(Loaded());
  final AudioPlayer player = IC.getIt();

  static const platform = MethodChannel('audio/effects');

  void addReverb(int audioSessionId) async {
    try {
      await platform
          .invokeMethod('addReverb', {'audioSessionId': audioSessionId});
    } catch (e) {
      if (kDebugMode) {
        print("Failed to add reverb: $e");
      }
    }
  }

  void setPitch(double pitch) {}

  void toggleReverb() {
    if (state is Loaded) {
      final loadedState = state as Loaded;
      if (!loadedState.isReverb) {
        player.setPitch(0.5);
        player.setSpeed(0.5);
        addReverb(player.androidAudioSessionId ?? 0);
        emit(Loaded(isReverb: true));
      } else {
        player.setPitch(1);
        player.setSpeed(1);
        emit(Loaded(isReverb: false));
      }
    }
  }
}
