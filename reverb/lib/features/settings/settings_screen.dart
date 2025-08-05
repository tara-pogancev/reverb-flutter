import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/ui/app_scaffold.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';
import 'package:reverb/core/ui/style/app_text_styles.dart';
import 'package:reverb/core/ui/widgets/divider_with_title.dart';
import 'package:reverb/features/settings/settings_language_picker.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String packageInfoString = "";

  @override
  void initState() {
    super.initState();
    initPackageInfo();
  }

  initPackageInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      packageInfoString =
          "${Translations.of(context).general.appName} ${packageInfo.version}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      inclidePadding: true,
      appBar: AppBar(
        backgroundColor: AppColorScheme.of(context).white.withAlpha(25),
        title: Text(Translations.of(context).settings.title),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DividerWithTitle(title: Translations.of(context).settings.language),
          defaultSpacer,
          SettingsLanguagePicker(),
          Spacer(),
          Text(
            packageInfoString,
            textAlign: TextAlign.center,
            style: AppTextStyles.of(context).secondary,
          )
        ],
      ),
    );
  }
}
