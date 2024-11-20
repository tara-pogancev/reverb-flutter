import 'package:go_router/go_router.dart';
import 'package:reverb/core/router/router_page_builder.dart';
import 'package:reverb/features/home/home_screen.dart';
import 'package:reverb/features/settings/settings_screen.dart';
import 'package:reverb/features/song_player/song_player_screen.dart';

class AppRouter {
  static GoRouter router() => GoRouter(
        routes: [
          GoRoute(
            path: Routes.home,
            pageBuilder: defaultPageBuilder(
              const HomeScreen(),
            ),
          ),
          GoRoute(
            path: Routes.songPlayer,
            pageBuilder: defaultPageBuilder(
              const SongPlayerScreen(),
            ),
          ),
          GoRoute(
            path: Routes.settings,
            pageBuilder: defaultPageBuilder(
              const SettingsScreen(),
            ),
          ),
        ],
        initialLocation: Routes.home,
      );
}

class Routes {
  static const home = '/';
  static const songPlayer = '/song-player';
  static const settings = '/settings';
}
