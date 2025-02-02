import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:reverb/core/domain/cubits/audio_effects/audio_effects_state.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';

class AudioEffectsCubit extends HydratedCubit<AudioEffectsState> {
  final AudioPlayer player = IC.getIt();

  AudioEffectsCubit() : super(AudioEffectsState()) {
    if (state.isReverb) {
      player.setPitch(state.pitch);
      player.setSpeed(state.speed);
      if (state.hasEcho) {
        addReverb(player.androidAudioSessionId ?? 0);
      }
    }
  }

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
      final result = await platform
          .invokeMethod('removeReverb', {'audioSessionId': audioSessionId});
      print(result);
      emit(state.copyWith(hasEcho: false));
    } catch (e) {
      if (kDebugMode) {
        print("Failed to remove reverb: $e");
      }
    }
  }

  void setSpeedAndPitch(double value) {
    if (state.isReverb) {
      player.setSpeed(value);
      player.setPitch(value);
    }

    emit(state.copyWith(speed: value, pitch: value));
  }

  void toggleEcho() {
    emit(state.copyWith(hasEcho: !state.hasEcho));
    if (state.hasEcho) {
      addReverb(player.androidAudioSessionId ?? 0);
    } else {
      removeReverb(player.androidAudioSessionId ?? 0);
    }
  }

  void toggleReverb() async {
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

  void setAppLocale(AppLocale locale) {
    final localeString = locale.languageCode;
    emit(state.copyWith(language: localeString));
  }

  AppLocale? getAppLocale() {
    switch (state.language) {
      case null:
        return null;

      case "en":
        return AppLocale.en;

      case "sr":
        return AppLocale.srLatn;

      case "fr":
        return AppLocale.fr;

      case "es":
        return AppLocale.es;

      case "de":
        return AppLocale.de;

      case "hi":
        return AppLocale.hi;

      default:
        return AppLocale.en;
    }
  }
}
