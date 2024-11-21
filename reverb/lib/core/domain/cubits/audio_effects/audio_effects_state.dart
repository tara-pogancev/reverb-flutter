import 'dart:convert';

class AudioEffectsState {
  final bool isReverb;
  final double speed;
  final double pitch;
  final bool hasEcho;

  AudioEffectsState({
    this.isReverb = false,
    this.speed = 0.5,
    this.pitch = 0.5,
    this.hasEcho = true,
  });

  AudioEffectsState copyWith({
    bool? isReverb,
    double? speed,
    double? pitch,
    bool? hasEcho,
  }) {
    return AudioEffectsState(
      isReverb: isReverb ?? this.isReverb,
      speed: speed ?? this.speed,
      pitch: pitch ?? this.pitch,
      hasEcho: hasEcho ?? this.hasEcho,
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'isReverb': isReverb,
      'speed': speed,
      'pitch': pitch,
      'hasEcho': hasEcho,
    };
  }
  factory AudioEffectsState.fromMap(Map<String, dynamic> map) {
    return AudioEffectsState(
      isReverb: map['isReverb'],
      speed: map['speed'],
      pitch: map['pitch'],
      hasEcho: map['hasEcho'],
    );
  }
  String toJson() => json.encode(toMap());
  factory AudioEffectsState.fromJson(String source) => AudioEffectsState.fromMap(json.decode(source));
}
