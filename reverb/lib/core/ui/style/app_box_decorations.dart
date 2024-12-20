import 'package:flutter/widgets.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';

class AppBoxDecorations {
  BuildContext? context;

  AppBoxDecorations.of(this.context);

  BoxDecoration get outlinedGray {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(defaultBorderRadius),
      border: Border.all(
        color: AppColorScheme.of(context).mediumGray,
        width: 2,
      ),
    );
  }
}
