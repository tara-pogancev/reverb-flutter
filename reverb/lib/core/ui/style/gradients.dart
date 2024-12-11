import 'package:flutter/material.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';

final appGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    darkAppColorScheme.darkPurple,
    darkAppColorScheme.mangeta,
  ],
);

final reverseAppGradient = LinearGradient(
  colors: [
    darkAppColorScheme.mangeta,
    darkAppColorScheme.darkPurple,
  ],
);
