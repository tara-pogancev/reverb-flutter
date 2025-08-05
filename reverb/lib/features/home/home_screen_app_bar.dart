import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';
import 'package:reverb/core/ui/style/app_text_styles.dart';
import 'package:reverb/features/effect_settings/reverb_switch.dart';

class HomeScreenAppBar {
  static AppBar get(BuildContext context) => AppBar(
        toolbarHeight: 90,
        scrolledUnderElevation: 0,
        flexibleSpace: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
        leading: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.only(
                left: smallElementPadding, top: 30, bottom: 30),
            child: IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: Icon(Icons.tune)),
          ),
        ),
        backgroundColor: AppColorScheme.of(context).white.withAlpha(0),
        title: Text(
          Translations.of(context).general.appName,
          style: AppTextStyles.of(context).title,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: smallElementPadding),
            child: ReverbSwitch(),
          ),
        ],
      );
}
