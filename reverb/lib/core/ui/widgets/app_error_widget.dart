import 'package:flutter/material.dart';
import 'package:reverb/core/consts.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({super.key, this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(defaultElementPadding),
        child: Column(
          children: [
            Icon(Icons.error),
            if (message != null) ...[
              smallSpacer,
              Text(message!),
            ],
          ],
        ),
      ),
    );
  }
}
