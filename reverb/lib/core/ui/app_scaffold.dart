import 'package:flutter/material.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    this.appBar,
    required this.child,
    this.inclidePadding = false,
    this.drawer,
    this.bottomNavigationBar,
    this.endDrawer,
  });

  final AppBar? appBar;
  final Widget child;
  final bool inclidePadding;
  final Widget? drawer;
  final Widget? bottomNavigationBar;
  final Widget? endDrawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorScheme.of(context).white,
      appBar: appBar,
      drawer: drawer,
      endDrawer: endDrawer,
      bottomNavigationBar: bottomNavigationBar,
      body: SafeArea(
        child: Padding(
          padding: (!inclidePadding)
              ? EdgeInsets.zero
              : EdgeInsets.all(defaultPagePadding),
          child: child,
        ),
      ),
    );
  }
}
