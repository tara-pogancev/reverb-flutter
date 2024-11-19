import 'package:go_router/go_router.dart';
import 'package:reverb/core/router/router_page_builder.dart';
import 'package:reverb/features/home/home_screen.dart';

class AppRouter {
  static GoRouter router() => GoRouter(
        routes: [
          GoRoute(
            path: Routes.home,
            pageBuilder: defaultPageBuilder(
              const HomeScreen(),
            ),
          ),
        ],
        initialLocation: Routes.home,
      );
}

class Routes {
  static const home = '/';
}
