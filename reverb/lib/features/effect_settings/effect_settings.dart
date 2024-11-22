import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/domain/cubits/audio_effects/audio_effects_cubit.dart';
import 'package:reverb/core/domain/cubits/audio_effects/audio_effects_state.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/style/app_text_styles.dart';

class EffectSettings extends StatefulWidget {
  const EffectSettings({super.key});

  @override
  State<EffectSettings> createState() => _EffectSettingsState();
}

class _EffectSettingsState extends State<EffectSettings> {
  final AudioEffectsCubit cubit = IC.getIt();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<AudioEffectsCubit, AudioEffectsState>(
        bloc: cubit,
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                Translations.of(context).audioEffects.audioEffects,
                style: AppTextStyles.of(context).primary,
              ),
              defaultSpacer,
              Slider(
                min: minSpeed,
                max: maxSpeed,
                divisions: ((maxSpeed - minSpeed) / 0.1).toInt(),
                value: state.speed,
                onChanged: (value) => cubit.setSpeedAndPitch(value),
              ),
              Text(
                "${Translations.of(context).audioEffects.speedAndPitch} (${state.speed}x)",
                style: AppTextStyles.of(context).secondary,
              ),
              Divider(
                height: largeElementPadding,
              ),
              CheckboxListTile(
                title: Text(Translations.of(context).audioEffects.echo),
                value: state.hasEcho,
                onChanged: (value) => cubit.toggleEcho(),
              ),
              Divider(
                height: largeElementPadding,
              ),
            ],
          );
        },
      ),
    );
  }
}
