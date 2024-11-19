import 'package:flutter/material.dart';

class AppTextStyles {
  BuildContext? context;

  AppTextStyles.of(this.context);

  TextStyle get bold {
    return const TextStyle(
      fontWeight: FontWeight.bold,
    );
  }
}
