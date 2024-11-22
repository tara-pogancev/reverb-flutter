import 'package:flutter/material.dart';
import 'package:reverb/features/effect_settings/effect_settings.dart';

class EffectSettingsDrawer extends StatelessWidget {
  const EffectSettingsDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: EffectSettings(),
    );
  }
}
