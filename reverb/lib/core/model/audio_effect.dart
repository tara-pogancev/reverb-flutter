import 'dart:convert';

class AppAudioEffect {
  String audioId;
  double speed;
  double pitch;
  bool isReverbDefault;
  bool isEcho;
  double bassBoost;

  AppAudioEffect({
    this.audioId = '',
    this.speed = 9.75,
    this.pitch = 0.6,
    this.isReverbDefault = false,
    this.isEcho = true,
    this.bassBoost = 1.2,
  });

  AppAudioEffect copyWith({
    String? audioId,
    double? speed,
    double? pitch,
    bool? isReverbDefault,
    bool? isEcho,
    double? bassBoost,
  }) {
    return AppAudioEffect(
      audioId: audioId ?? this.audioId,
      speed: speed ?? this.speed,
      pitch: pitch ?? this.pitch,
      isReverbDefault: isReverbDefault ?? this.isReverbDefault,
      isEcho: isEcho ?? this.isEcho,
      bassBoost: bassBoost ?? this.bassBoost,
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'audioId': audioId,
      'speed': speed,
      'pitch': pitch,
      'isReverbDefault': isReverbDefault,
      'isEcho': isEcho,
      'bassBoost': bassBoost,
    };
  }
  factory AppAudioEffect.fromMap(Map<String, dynamic> map) {
    return AppAudioEffect(
      audioId: map['audioId'],
      speed: map['speed'],
      pitch: map['pitch'],
      isReverbDefault: map['isReverbDefault'],
      isEcho: map['isEcho'],
      bassBoost: map['bassBoost'],
    );
  }
  String toJson() => json.encode(toMap());
  factory AppAudioEffect.fromJson(String source) => AppAudioEffect.fromMap(json.decode(source));
  @override
  String toString() {
    return 'AppAudioEffect(audioId: $audioId, speed: $speed, pitch: $pitch, isReverbDefault: $isReverbDefault, isEcho: $isEcho, bassBoost: $bassBoost)';
  }
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is AppAudioEffect &&
      other.audioId == audioId &&
      other.speed == speed &&
      other.pitch == pitch &&
      other.isReverbDefault == isReverbDefault &&
      other.isEcho == isEcho &&
      other.bassBoost == bassBoost;
  }
  @override
  int get hashCode {
    return audioId.hashCode ^
      speed.hashCode ^
      pitch.hashCode ^
      isReverbDefault.hashCode ^
      isEcho.hashCode ^
      bassBoost.hashCode;
  }
}
