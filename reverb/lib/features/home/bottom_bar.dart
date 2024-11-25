import 'package:flutter/material.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key, required this.onTabSelected});

  final Function(int index) onTabSelected;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColorScheme.of(context).white,
      unselectedItemColor: AppColorScheme.of(context).mediumGray,
      backgroundColor: AppColorScheme.of(context).black,
      onTap: (value) => onTabSelected(value),
      items: [
        BottomNavigationBarItem(
          label: Translations.of(context).bottomBar.music,
          icon: Icon(
            Icons.music_note_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: Translations.of(context).bottomBar.search,
          icon: Icon(
            Icons.search,
          ),
        ),
        BottomNavigationBarItem(
          label: Translations.of(context).bottomBar.playlists,
          icon: Icon(
            Icons.library_music_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: Translations.of(context).bottomBar.artists,
          icon: Icon(
            Icons.people_outline_rounded,
          ),
        ),
      ],
    );
  }
}
