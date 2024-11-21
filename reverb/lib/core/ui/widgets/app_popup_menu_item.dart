import 'package:flutter/material.dart';
import 'package:reverb/core/consts.dart';

class AppPopupMenuItem {
  static PopupMenuItem get(
      {required BuildContext context,
      required Function() onPressed,
      required String text,
      IconData? icon}) {
    return PopupMenuItem(
      onTap: () => onPressed(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) Icon(icon),
          if (icon != null) smallSpacer,
          Text(text),
        ],
      ),
    );
  }
}
