import 'package:flutter/material.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';

class AppTextStyles {
  BuildContext? context;

  AppTextStyles.of(this.context);

  TextStyle get bold {
    return const TextStyle(
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle get title {
    return TextStyle(
      fontSize: 32,
      color: AppColorScheme.of(context).black,
      fontWeight: FontWeight.w600,
      fontFamily: "BrunoAceSC",
    );
  }

  TextStyle get primary {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: AppColorScheme.of(context).black,
    );
  }

  TextStyle get secondary {
    return TextStyle(
      fontSize: 14,
      color: AppColorScheme.of(context).darkGray,
    );
  }

  TextStyle get ternary {
    return TextStyle(
      fontSize: 12,
      color: AppColorScheme.of(context).mediumGray,
    );
  }
}
