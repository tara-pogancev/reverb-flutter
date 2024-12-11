import 'package:flutter/material.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';

final darkMaterialTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: darkAppColorScheme.mangeta,
      brightness: Brightness.dark,
    ),
    fontFamily: "Raleway",
    useMaterial3: true,
    brightness: Brightness.dark);

final lightMaterialTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: darkAppColorScheme.darkPurple,
      brightness: Brightness.light,
    ),
    fontFamily: "Raleway",
    useMaterial3: true,
    brightness: Brightness.light);
