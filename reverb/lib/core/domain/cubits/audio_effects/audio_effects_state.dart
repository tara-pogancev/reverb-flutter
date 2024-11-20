part of 'audio_effects_cubit.dart';

@immutable
sealed class AudioEffectsState {}

final class Loading extends AudioEffectsState {}

final class Error extends AudioEffectsState {}

final class Loaded extends AudioEffectsState {
  final bool isReverb;

  Loaded({this.isReverb = false});
}
