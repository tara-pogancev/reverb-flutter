import 'package:flutter/material.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';
import 'package:reverb/core/ui/style/app_text_styles.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({super.key, this.message});

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
              Icons.sentiment_dissatisfied_outlined,
              color: AppColorScheme.of(context).darkGray,
              size: 60,
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
