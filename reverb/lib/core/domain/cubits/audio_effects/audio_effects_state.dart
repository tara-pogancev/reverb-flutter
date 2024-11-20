part of 'audio_effects_cubit.dart';

@immutable
sealed class AudioEffectsState {}

final class AudioEffectsInitial extends AudioEffectsState {}

final class Loading extends AudioEffectsState {}

final class Error extends AudioEffectsState {}

final class Loaded extends AudioEffectsState {
  final bool isReverb;
  final List<AppAudioEffect> savedEffects;

  Loaded({this.isReverb = false, this.savedEffects = const []});
}
