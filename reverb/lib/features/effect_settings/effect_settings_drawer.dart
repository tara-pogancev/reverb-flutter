import 'package:flutter/material.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';
import 'package:reverb/features/effect_settings/effect_settings.dart';

class EffectSettingsDrawer extends StatelessWidget {
  const EffectSettingsDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColorScheme.of(context).lightGray,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: largeElementPadding, horizontal: defaultPagePadding),
        child: EffectSettings(),
      ),
    );
  }
}
