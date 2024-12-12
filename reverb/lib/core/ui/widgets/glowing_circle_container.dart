import 'package:flutter/material.dart';
import 'package:reverb/core/extensions/context_extensions.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';

class GlowingCircleContainer extends StatelessWidget {
  const GlowingCircleContainer({super.key, required this.child, this.color});

  final Color? color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(100)),
        boxShadow: [
          BoxShadow(
            color: (context.getIsDarkTheme())
                ? (color ?? AppColorScheme.of(context).mangeta).withOpacity(0.5)
                : Colors.transparent,
            blurRadius: 7, // changes position of shadow
          ),
        ],
      ),
      child: child,
    );
  }
}
