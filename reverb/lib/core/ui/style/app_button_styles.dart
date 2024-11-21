import 'package:flutter/material.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';

class AppButtonStyles {
  BuildContext? context;

  AppButtonStyles.of(this.context);

  ButtonStyle get black => ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(defaultBorderRadius),
      ),
      foregroundColor: AppColorScheme.of(context).white,
      backgroundColor: AppColorScheme.of(context).black);

  ButtonStyle get gray => ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(defaultBorderRadius),
      ),
      foregroundColor: AppColorScheme.of(context).mediumGray,
      backgroundColor: AppColorScheme.of(context).black);

  ButtonStyle get white => ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(defaultBorderRadius),
      ),
      foregroundColor: AppColorScheme.of(context).black,
      backgroundColor: AppColorScheme.of(context).white);
}
