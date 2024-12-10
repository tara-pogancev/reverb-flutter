import 'package:flutter/material.dart';
import 'package:reverb/core/domain/cubits/audio_effects/audio_effects_cubit.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';

class SettingsLanguagePicker extends StatelessWidget {
  const SettingsLanguagePicker({super.key});

  Map<AppLocale, String> _getLanguageValues(BuildContext context) {
    return Map<AppLocale, String>.from({
      AppLocale.en: "🇬🇧 English",
      AppLocale.es: "🇪🇸 Español",
      AppLocale.fr: "🇫🇷 Français",
      AppLocale.de: "🇩🇪 Deutsch",
      AppLocale.srLatn: "🇷🇸 Srpski",
      AppLocale.hi: "🇮🇳 हिंदी"
    });
  }

  void _setLocale(AppLocale locale, BuildContext context) async {
    LocaleSettings.setLocale(locale);
    IC.getIt<AudioEffectsCubit>().setAppLocale(locale);
  }

  String? _getCurrentLocaleValue(BuildContext context) {
    return _getLanguageValues(context)[LocaleSettings.currentLocale];
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      hint: Text(Translations.of(context).settings.language),
      items: _getLanguageValues(context)
          .values
          .toList()
          .map(
            (e) => DropdownMenuItem(
              value: e,
              child: Text(e),
            ),
          )
          .toList(),
      value: _getCurrentLocaleValue(context),
      onChanged: (value) {
        final appLocale = _getLanguageValues(context)
            .entries
            .firstWhere((entry) => entry.value == value)
            .key;

        _setLocale(appLocale, context);
      },
    );
  }
}
