import 'package:flutter/material.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';

class EffectSettings extends StatelessWidget {
  const EffectSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColorScheme.of(context).red,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [Text("HI")],
        ),
      ),
    );
  }
}
