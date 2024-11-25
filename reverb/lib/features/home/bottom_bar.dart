import 'package:flutter/material.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key, required this.onTabSelected});

  final Function(int index) onTabSelected;

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColorScheme.of(context).white,
      unselectedItemColor: AppColorScheme.of(context).mediumGray,
      backgroundColor: AppColorScheme.of(context).black,
      onTap: (value) {
        setState(() {
          index = value;
        });
        widget.onTabSelected(value);
      },
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
