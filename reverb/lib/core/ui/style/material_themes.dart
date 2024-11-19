import 'package:flutter/material.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';

final darkMaterialTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: darkAppColorScheme.black,
      brightness: Brightness.dark,
    ),
    fontFamily: "Raleway",
    fontFamilyFallback: const ["NotoColorEmoji"],
    useMaterial3: true,
    brightness: Brightness.dark);

final lightMaterialTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: lightAppColorScheme.black,
      brightness: Brightness.light,
    ),
    fontFamily: "Raleway",
    fontFamilyFallback: const ["NotoColorEmoji"],
    useMaterial3: true,
    brightness: Brightness.light);
