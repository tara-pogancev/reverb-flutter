import 'package:flutter/material.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';

class AppButtonStyles {
  BuildContext? context;

  AppButtonStyles.of(this.context);

  ButtonStyle get lightBlue {
    return ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(defaultBorderRadius),
        ),
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
        minimumSize: const Size(50, 50),
        foregroundColor: AppColorScheme.of(context).black,
        backgroundColor: AppColorScheme.of(context).lightBlue);
  }

  get outlinedRed => null;
}
