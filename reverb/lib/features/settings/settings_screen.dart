import 'package:flutter/material.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/ui/app_scaffold.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title: Text(Translations.of(context).settings.title),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          
        ],
      ),
    );
  }
}
