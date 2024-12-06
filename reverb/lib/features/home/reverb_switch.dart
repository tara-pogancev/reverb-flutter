import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reverb/core/domain/cubits/audio_effects/audio_effects_cubit.dart';
import 'package:reverb/core/domain/cubits/audio_effects/audio_effects_state.dart';
import 'package:reverb/core/injection_container.dart';

class ReverbSwitch extends StatefulWidget {
  const ReverbSwitch({super.key});

  @override
  State<ReverbSwitch> createState() => _ReverbSwitchState();
}

class _ReverbSwitchState extends State<ReverbSwitch> {
  final AudioEffectsCubit effectsCubit = IC.getIt();

  late bool initialValue;

  void toggleReverb() async {
    HapticFeedback.mediumImpact();
    effectsCubit.toggleReverb();
    Future.delayed(Durations.short1);
    changeTheme();
  }

  void changeTheme() {
    if (effectsCubit.state.isReverb) {
      AdaptiveTheme.of(context).setDark();
    } else {
      AdaptiveTheme.of(context).setLight();
    }
  }

  @override
  void initState() {
    super.initState();

    initialValue = effectsCubit.state.isReverb;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioEffectsCubit, AudioEffectsState>(
      bloc: effectsCubit,
      builder: (context, state) {
        return Switch(
            value: state.isReverb, onChanged: (value) => toggleReverb());
      },
    );

    // return Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: defaultElementPadding),
    //   child: GlowingSwitch(
    //     value: initialValue,
    //     onChanged: () => toggleReverb(),
    //   ),
    // );
  }
}
