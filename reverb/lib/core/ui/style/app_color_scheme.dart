import 'package:flutter/material.dart';
import 'package:reverb/core/extensions/context_extensions.dart';

class AppColorScheme {
  final Color white;
  final Color lightGray;
  final Color mediumGray;
  final Color darkGray;
  final Color black;
  final Color red;
  final Color darkRed;
  final Color mangeta;
  final Color darkPurple;

  BuildContext? context;

  AppColorScheme.of(this.context)
      : black = _getActiveScheme(context!).black,
        white = _getActiveScheme(context).white,
        lightGray = _getActiveScheme(context).lightGray,
        mediumGray = _getActiveScheme(context).mediumGray,
        darkGray = _getActiveScheme(context).darkGray,
        red = _getActiveScheme(context).red,
        darkRed = _getActiveScheme(context).darkRed,
        mangeta = _getActiveScheme(context).mangeta,
        darkPurple = _getActiveScheme(context).darkPurple;

  AppColorScheme({
    required this.black,
    required this.white,
    required this.lightGray,
    required this.mediumGray,
    required this.darkGray,
    required this.darkRed,
    required this.red,
    required this.mangeta,
    required this.darkPurple,
  });
}

AppColorScheme _getActiveScheme(BuildContext context) {
  return context.getIsLightTheme() ? lightAppColorScheme : darkAppColorScheme;
}

final lightAppColorScheme = AppColorScheme(
  white: const Color(0xFFfcfdff),
  lightGray: const Color(0xFFf3f4f6),
  mediumGray: const Color.fromARGB(255, 113, 117, 133),
  darkGray: const Color.fromARGB(255, 79, 84, 99),
  black: const Color(0xFF181c27),
  red: const Color(0xFFfcfdff),
  darkRed: const Color(0xFF621414),
  mangeta: const Color(0xFFe341d7),
  darkPurple: const Color(0xFF2d2c9f),
);

final darkAppColorScheme = AppColorScheme(
  white: const Color(0xFF181c27),
  lightGray: const Color(0xFF373b46),
  mediumGray: const Color.fromARGB(255, 102, 108, 128),
  darkGray: const Color(0xFFf3f4f6),
  black: const Color(0xFFfcfdff),
  red: const Color(0xFF621414),
  darkRed: const Color(0xFFfcfdff),
  mangeta: const Color(0xFFe341d7),
  darkPurple: const Color(0xFF2d2c9f),
);
