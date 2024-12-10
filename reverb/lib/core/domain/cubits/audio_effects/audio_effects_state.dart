// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AudioEffectsState {
  final bool isReverb;
  final double speed;
  final double pitch;
  final bool hasEcho;
  final String? language;

  const AudioEffectsState({
    this.isReverb = false,
    this.speed = 0.9,
    this.pitch = 0.5,
    this.hasEcho = true,
    this.language,
  });

  AudioEffectsState copyWith({
    bool? isReverb,
    double? speed,
    double? pitch,
    bool? hasEcho,
    String? language,
  }) {
    return AudioEffectsState(
      isReverb: isReverb ?? this.isReverb,
      speed: speed ?? this.speed,
      pitch: pitch ?? this.pitch,
      hasEcho: hasEcho ?? this.hasEcho,
      language: language ?? this.language,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'isReverb': isReverb,
      'speed': speed,
      'pitch': pitch,
      'hasEcho': hasEcho,
      'language': language
    };
  }

  factory AudioEffectsState.fromMap(Map<String, dynamic> map) {
    return AudioEffectsState(
      isReverb: map['isReverb'],
      speed: map['speed'],
      pitch: map['pitch'],
      hasEcho: map['hasEcho'],
      language: map['language'],
    );
  }
  String toJson() => json.encode(toMap());
  factory AudioEffectsState.fromJson(String source) =>
      AudioEffectsState.fromMap(json.decode(source));
}
