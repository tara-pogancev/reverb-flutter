import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:reverb/core/router/app_router.dart';
import 'package:reverb/core/ui/dialog_manager/dialog_manager.dart';

class IC {
  static final getIt = GetIt.instance;

  static Future<void> setUp() async {
    // Set the router and dialog manager

    getIt.registerLazySingleton<GoRouter>(() => AppRouter.router());
    getIt.registerLazySingleton<DialogManager>(
        () => DialogManager(IC.getIt<GoRouter>().configuration.navigatorKey));

    // Setup repositories

    // getIt.registerLazySingleton<AuthRepository>(
    //     () => AuthRepository(dio: getIt()));

    // Setup bloc & cubit

    // getIt.registerLazySingleton(() => ErrorCubit());
  }
}
