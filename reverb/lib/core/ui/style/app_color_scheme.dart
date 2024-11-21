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

  BuildContext? context;

  AppColorScheme.of(this.context)
      : black = _getActiveScheme(context!).black,
        white = _getActiveScheme(context).white,
        lightGray = _getActiveScheme(context).lightGray,
        mediumGray = _getActiveScheme(context).mediumGray,
        darkGray = _getActiveScheme(context).darkGray,
        red = _getActiveScheme(context).red,
        darkRed = _getActiveScheme(context).darkRed;

  AppColorScheme(
      {required this.black,
      required this.white,
      required this.lightGray,
      required this.mediumGray,
      required this.darkGray,
      required this.darkRed,
      required this.red});
}

AppColorScheme _getActiveScheme(BuildContext context) {
  return context.getIsLightTheme() ? lightAppColorScheme : darkAppColorScheme;
}

final lightAppColorScheme = AppColorScheme(
  white: const Color(0xFFfcfdff),
  lightGray: const Color(0xFFf3f4f6),
  mediumGray: const Color(0xFF9a9ca3),
  darkGray: const Color(0xFF373b46),
  black: const Color(0xFF181c27),
  red: const Color(0xFFfcfdff),
  darkRed: const Color(0xFF621414),
);

final darkAppColorScheme = AppColorScheme(
  white: const Color(0xFF181c27),
  lightGray: const Color(0xFF373b46),
  mediumGray: const Color(0xFF9a9ca3),
  darkGray: const Color(0xFFf3f4f6),
  black: const Color(0xFFfcfdff),
  red: const Color(0xFF621414),
  darkRed: const Color(0xFFfcfdff),
);
