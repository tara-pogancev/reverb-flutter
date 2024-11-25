import 'package:flutter/material.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/ui/style/app_text_styles.dart';

class DividerWithTitle extends StatelessWidget {
  const DividerWithTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppTextStyles.of(context).ternary,
        ),
        smallSpacer,
        Expanded(
          child: Divider(),
        ),
      ],
    );
  }
}
