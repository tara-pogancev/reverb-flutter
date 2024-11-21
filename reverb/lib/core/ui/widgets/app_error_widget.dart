import 'package:flutter/material.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';
import 'package:reverb/core/ui/style/app_text_styles.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({super.key, this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(defaultElementPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error,
              color: AppColorScheme.of(context).black,
            ),
            if (message != null) ...[
              smallSpacer,
              Text(
                message!,
                style: AppTextStyles.of(context).primary,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
