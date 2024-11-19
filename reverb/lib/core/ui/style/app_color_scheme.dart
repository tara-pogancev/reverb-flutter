import 'package:flutter/material.dart';
import 'package:reverb/core/extensions/context_extensions.dart';

class AppColorScheme {
  final Color white;
  final Color black;
  final Color mediumGreen;
  final Color green;
  final Color darkGreen;
  final Color lightBlue;
  final Color red;
  final Color darkRed;

  BuildContext? context;

  AppColorScheme.of(this.context)
      : black = _getActiveScheme(context!).black,
        white = _getActiveScheme(context).white,
        mediumGreen = _getActiveScheme(context).mediumGreen,
        green = _getActiveScheme(context).green,
        darkGreen = _getActiveScheme(context).darkGreen,
        red = _getActiveScheme(context).red,
        darkRed = _getActiveScheme(context).darkRed,
        lightBlue = _getActiveScheme(context).lightBlue;

  AppColorScheme(
      {required this.black,
      required this.white,
      required this.mediumGreen,
      required this.green,
      required this.darkGreen,
      required this.lightBlue,
      required this.darkRed,
      required this.red});
}

AppColorScheme _getActiveScheme(BuildContext context) {
  return context.getIsLightTheme() ? lightAppColorScheme : darkAppColorScheme;
}

// The main color scheme is dark
final darkAppColorScheme = AppColorScheme(
  white: const Color(0xFFe9ecec),
  black: const Color(0xFF011013),
  mediumGreen: const Color(0xFF073039),
  darkGreen: const Color(0xFF0A1D21),
  green: const Color(0xFF38dc71),
  lightBlue: const Color(0xFF97D1DE),
  darkRed: const Color(0xFF290808),
  red: const Color(0xFFFF7A88),
);

final lightAppColorScheme = AppColorScheme(
  white: const Color(0xFF011013),
  black: const Color(0xFFf3f8fa),
  mediumGreen: const Color(0xffd8dcee),
  darkGreen: const Color(0xffebf0f2),
  green: const Color(0xFF51ae55),
  lightBlue: const Color.fromARGB(255, 54, 140, 162),
  darkRed: const Color.fromARGB(255, 244, 189, 195),
  red: const Color.fromARGB(255, 107, 16, 16),
);
