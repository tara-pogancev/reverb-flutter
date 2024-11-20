import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reverb/core/domain/cubits/audio_effects/audio_effects_cubit.dart';
import 'package:reverb/core/injection_container.dart';

class HeaderReverbSwitch extends StatefulWidget {
  const HeaderReverbSwitch({super.key});

  @override
  State<HeaderReverbSwitch> createState() => _HeaderReverbSwitchState();
}

class _HeaderReverbSwitchState extends State<HeaderReverbSwitch> {
  final AudioEffectsCubit effectsCubit = IC.getIt();

  void toggleReverb(value) {
    if (value) {
      AdaptiveTheme.of(context).setDark();
    } else {
      AdaptiveTheme.of(context).setLight();
    }
    effectsCubit.toggleReverb();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioEffectsCubit, AudioEffectsState>(
      bloc: effectsCubit,
      builder: (context, state) {
        return Switch(
          value: (state is Loaded) ? state.isReverb : false,
          onChanged: (value) => toggleReverb(value),
        );
      },
    );
  }
}
