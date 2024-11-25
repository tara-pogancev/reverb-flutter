import 'package:flutter/material.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/domain/cubits/song_list/song_list_cubit.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/style/app_button_styles.dart';
import 'package:reverb/core/ui/style/app_text_styles.dart';

class PermissionRequiredWidget extends StatelessWidget {
  const PermissionRequiredWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(largeElementPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.lock_outline),
            defaultSpacer,
            Text(
              Translations.of(context).player.permissionRequired,
              style: AppTextStyles.of(context).primary,
            ),
            smallSpacer,
            Text(
              Translations.of(context).player.pleaseEnableAppAccess,
              style: AppTextStyles.of(context).secondary,
            ),
            smallSpacer,
            Text(
              Translations.of(context).player.allowInSettings,
              style: AppTextStyles.of(context).ternary,
              textAlign: TextAlign.center,
            ),
            largeSpacer,
            FilledButton(
              onPressed: () {
                IC.getIt<SongListCubit>().requestPermission();
              },
              style: AppButtonStyles.of(context).gray,
              child: Text(
                Translations.of(context).player.allowAccess,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
