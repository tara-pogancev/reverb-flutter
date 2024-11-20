import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:reverb/core/model/audio_effect.dart';

part 'audio_effects_state.dart';

class AudioEffectsCubit extends HydratedCubit<AudioEffectsState> {
  AudioEffectsCubit() : super(AudioEffectsInitial());

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

  void setPitch(double pitch) {
    
  }

  @override
  AudioEffectsState? fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic>? toJson(AudioEffectsState state) {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
