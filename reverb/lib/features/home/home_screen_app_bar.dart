import 'package:flutter/material.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';
import 'package:reverb/core/ui/style/app_text_styles.dart';
import 'package:reverb/features/home/header_reverb_switch.dart';

class HomeScreenAppBar {
  static AppBar get(BuildContext context) => AppBar(
        toolbarHeight: 100,
        leading: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.only(
                left: smallElementPadding, top: 30, bottom: 30),
            child: IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: Icon(Icons.sort)),
          ),
        ),
        backgroundColor: AppColorScheme.of(context).white,
        title: Text(
          Translations.of(context).general.appName,
          style: AppTextStyles.of(context).title,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: smallElementPadding),
            child: HeaderReverbSwitch(),
          ),
        ],
      );
}
