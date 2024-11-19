import 'package:flutter/material.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    this.appBar,
    required this.child,
    this.ignorePadding = false,
    this.drawer,
  });

  final AppBar? appBar;
  final Widget child;
  final bool ignorePadding;
  final Widget? drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorScheme.of(context).black,
      appBar: appBar,
      drawer: drawer,
      body: SafeArea(
        child: Padding(
          padding: (ignorePadding)
              ? EdgeInsets.zero
              : EdgeInsets.all(defaultPagePadding),
          child: child,
        ),
      ),
    );
  }
}
