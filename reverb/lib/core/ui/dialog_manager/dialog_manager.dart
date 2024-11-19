import 'package:flutter/material.dart';
import 'package:reverb/core/extensions/context_extensions.dart';
import 'package:reverb/core/injection_container.dart';

class DialogManager {
  DialogManager(
    this._globalNavigationKey,
  );

  final GlobalKey<NavigatorState> _globalNavigationKey;

  BuildContext get _globalContext => _globalNavigationKey.currentState!.context;

  void displayGlobalSnakbar(
      {required String Function(BuildContext context) snackbarText,
      String Function(BuildContext context)? actionText,
      Function? action,
      bool clearSnackbars = true}) {
    _globalContext.showSnackbar(
        snackbarText: snackbarText.call(_globalContext),
        actionText: actionText?.call(_globalContext),
        action: action,
        clearSnackbars: clearSnackbars);
  }

  static void showGlobalSnackbar(
      {required String Function(BuildContext context) snackbarText,
      String Function(BuildContext context)? actionText,
      Function? action,
      bool clearSnackbars = true}) {
    IC.getIt<DialogManager>().displayGlobalSnakbar(
        snackbarText: snackbarText,
        actionText: actionText,
        clearSnackbars: clearSnackbars,
        action: action);
  }
}
