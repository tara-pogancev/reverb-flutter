import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/domain/cubits/audio_effects/audio_effects_cubit.dart';
import 'package:reverb/core/domain/cubits/audio_effects/audio_effects_state.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/widgets/glowing_switch.dart';

class HeaderReverbSwitch extends StatefulWidget {
  const HeaderReverbSwitch({super.key});

  @override
  State<HeaderReverbSwitch> createState() => _HeaderReverbSwitchState();
}

class _HeaderReverbSwitchState extends State<HeaderReverbSwitch> {
  final AudioEffectsCubit effectsCubit = IC.getIt();

  late bool initialValue;

  void toggleReverb() {
    HapticFeedback.vibrate();
    effectsCubit.toggleReverb();
  }

  @override
  void initState() {
    super.initState();

    initialValue = effectsCubit.state.isReverb;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AudioEffectsCubit, AudioEffectsState>(
      bloc: effectsCubit,
      listenWhen: (previous, current) => previous.isReverb != current.isReverb,
      listener: (context, state) {
        print(state.isReverb);
        if (effectsCubit.state.isReverb) {
          AdaptiveTheme.of(context).setDark();
        } else {
          AdaptiveTheme.of(context).setLight();
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultElementPadding),
        child: GlowingSwitch(
          value: initialValue,
          onChanged: () => toggleReverb(),
        ),
      ),
    );
  }
}
