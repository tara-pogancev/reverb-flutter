import 'package:flutter/material.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/ui/style/app_text_styles.dart';
import 'package:reverb/features/home/header_reverb_switch.dart';

class HomeScreenAppBar {
  static AppBar  get (BuildContext context) => AppBar(
        title: Text(
          Translations.of(context).general.appName,
          style: AppTextStyles.of(context).title,
        ),
        actions: [
          HeaderReverbSwitch(),
        ],
      );
}
