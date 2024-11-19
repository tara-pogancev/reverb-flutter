import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/style/material_themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );

  await IC.setUp();

  GoogleFonts.config.allowRuntimeFetching = true;
  runApp(TranslationProvider(child: const ReverbApp()));
}

class ReverbApp extends StatelessWidget {
  const ReverbApp({super.key});

  @override
  Widget build(BuildContext context) {
    final initialThemeMode = AdaptiveThemeMode.light;

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
      ),
    );
  }
}
