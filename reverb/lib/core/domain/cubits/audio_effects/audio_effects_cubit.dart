import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:reverb/core/domain/cubits/audio_effects/audio_effects_state.dart';
import 'package:reverb/core/injection_container.dart';

class AudioEffectsCubit extends HydratedCubit<AudioEffectsState> {
  AudioEffectsCubit() : super(AudioEffectsState());
  final AudioPlayer player = IC.getIt();

  static const platform = MethodChannel('audio/effects');

  void addReverb(int audioSessionId) async {
    try {
      await platform
          .invokeMethod('addReverb', {'audioSessionId': audioSessionId});
      emit(state.copyWith(hasEcho: true));
    } catch (e) {
      if (kDebugMode) {
        print("Failed to add reverb: $e");
      }
    }
  }

  void removeReverb(int audioSessionId) async {
    try {
      await platform
          .invokeMethod('removeReverb', {'audioSessionId': audioSessionId});
      emit(state.copyWith(hasEcho: false));
    } catch (e) {
      if (kDebugMode) {
        print("Failed to remove reverb: $e");
      }
    }
  }

  void setPitch(double pitch) {
    emit(state.copyWith(pitch: pitch));
  }

  void setSpeed(double speed) {
    emit(state.copyWith(pitch: speed));
  }

  void toggleReverb() {
    if (!state.isReverb) {
      player.setPitch(state.pitch);
      player.setSpeed(state.speed);
      if (state.hasEcho) {
        addReverb(player.androidAudioSessionId ?? 0);
      }

      emit(state.copyWith(isReverb: true));
    } else {
      player.setPitch(1);
      player.setSpeed(1);
      if (state.hasEcho) {
        removeReverb(player.androidAudioSessionId ?? 0);
      }

      emit(state.copyWith(isReverb: false));
    }
  }

  @override
  AudioEffectsState? fromJson(Map<String, dynamic> json) =>
      AudioEffectsState.fromMap(json);

  @override
  Map<String, dynamic>? toJson(AudioEffectsState state) => state.toMap();
}
