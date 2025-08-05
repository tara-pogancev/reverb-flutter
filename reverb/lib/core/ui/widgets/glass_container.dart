// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';

class GlassContainer extends StatelessWidget {
  const GlassContainer({
    super.key,
    required this.child,
    this.padding,
    this.innerPadding,
    this.tintColor,
    this.borderRadius,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? innerPadding;
  final Color? tintColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: ClipRRect(
        borderRadius:
            borderRadius ?? BorderRadius.circular(defaultBorderRadius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: IntrinsicWidth(
            child: IntrinsicHeight(
              child: Container(
                decoration: BoxDecoration(
                  color: tintColor ??
                      AppColorScheme.of(context).white.withAlpha(102),
                ),
                child: Padding(
                  padding: innerPadding ?? const EdgeInsets.all(0),
                  child: child,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
