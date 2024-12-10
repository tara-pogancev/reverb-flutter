import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/domain/cubits/audio_effects/audio_effects_cubit.dart';
import 'package:reverb/core/domain/cubits/audio_effects/audio_effects_state.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/router/app_router.dart';
import 'package:reverb/core/ui/style/app_text_styles.dart';
import 'package:reverb/features/home/reverb_switch.dart';

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
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: smallElementPadding),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  Translations.of(context).audioEffects.audioEffects,
                  style: AppTextStyles.of(context).title.copyWith(
                        fontSize: 18,
                      ),
                  textAlign: TextAlign.center,
                ),
                defaultSpacer,
                Slider(
                  min: minSpeed,
                  max: maxSpeed,
                  divisions: ((maxSpeed - minSpeed) / 0.05).toInt(),
                  value: state.speed,
                  onChanged: (!state.isReverb)
                      ? null
                      : (value) => cubit.setSpeedAndPitch(value),
                ),
                Text(
                  "${Translations.of(context).audioEffects.speedAndPitch} (${state.speed}x)",
                  style: AppTextStyles.of(context).secondary,
                ),
                Divider(
                  height: largeElementPadding,
                ),
                // CheckboxListTile(
                //   title: Text(Translations.of(context).audioEffects.echo),
                //   value: state.hasEcho,
                //   onChanged: (value) => cubit.toggleEcho(),
                // ),
                ListTile(
                    title: Text(Translations.of(context).audioEffects.reverb),
                    trailing: ReverbSwitch()),
                Divider(
                  height: largeElementPadding,
                ),
                FilledButton(
                  onPressed: () => context.push(Routes.settings),
                  child: Text(Translations.of(context).settings.title),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
