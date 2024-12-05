import 'package:flutter/material.dart';
import 'package:reverb/core/consts.dart';

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
      backgroundColor: Colors.transparent,
      appBar: appBar,
      extendBodyBehindAppBar: true,
      drawer: drawer,
      endDrawer: endDrawer,
      bottomNavigationBar: bottomNavigationBar,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/aurora_bg_dark.jpg",
              ),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Padding(
            padding: (!inclidePadding)
                ? EdgeInsets.zero
                : EdgeInsets.all(defaultPagePadding),
            child: child,
          ),
        ),
      ),
    );
  }
}
