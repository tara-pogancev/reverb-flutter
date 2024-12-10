import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:path_provider/path_provider.dart';
import 'package:reverb/core/domain/cubits/audio_effects/audio_effects_cubit.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/style/material_themes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );

  await IC.setUp();

  await JustAudioBackground.init(
      androidNotificationChannelId: 'com.ryanheise.bg_demo.channel.audio',
      androidNotificationChannelName: 'Audio playback',
      androidNotificationOngoing: true,
      androidNotificationIcon: 'drawable/note');

  final savedAppLocale = IC.getIt<AudioEffectsCubit>().getAppLocale();
  if (savedAppLocale == null) {
    LocaleSettings.useDeviceLocale();
  } else {
    LocaleSettings.setLocale(savedAppLocale);
  }

  runApp(TranslationProvider(child: const ReverbApp()));
}

class ReverbApp extends StatelessWidget {
  const ReverbApp({super.key});

  @override
  Widget build(BuildContext context) {
    final initialThemeMode = (IC.getIt<AudioEffectsCubit>().state.isReverb)
        ? AdaptiveThemeMode.dark
        : AdaptiveThemeMode.light;

    // final initialThemeMode = AdaptiveThemeMode.dark;

    return AdaptiveTheme(
      light: lightMaterialTheme,
      dark: darkMaterialTheme,
      initial: initialThemeMode,
      builder: (theme, darkTheme) => MaterialApp.router(
        routerConfig: IC.getIt<GoRouter>(),
        debugShowCheckedModeBanner: false,
        title: Translations.of(context).general.appName,
        theme: theme,
        darkTheme: darkTheme,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: TranslationProvider.of(context).flutterLocale,
        supportedLocales: AppLocaleUtils.supportedLocales,
      ),
    );
  }
}
