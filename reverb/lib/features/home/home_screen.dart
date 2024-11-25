import 'package:flutter/material.dart';
import 'package:reverb/core/domain/cubits/song_list/song_list_cubit.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/app_scaffold.dart';
import 'package:reverb/features/artists/artists_screen.dart';
import 'package:reverb/features/effect_settings/effect_settings_drawer.dart';
import 'package:reverb/features/home/bottom_bar.dart';
import 'package:reverb/features/home/home_screen_app_bar.dart';
import 'package:reverb/features/home/player_bar.dart';
import 'package:reverb/features/playlists/playlists_screen.dart';
import 'package:reverb/features/search/search_screen.dart';
import 'package:reverb/features/song_list/song_list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final SongListCubit songListCubit = IC.getIt();

  int visibleScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: HomeScreenAppBar.get(context),
      bottomNavigationBar: BottomBar(
        onTabSelected: (index) => setState(
          () {
            visibleScreenIndex = index;
          },
        ),
      ),
      drawer: EffectSettingsDrawer(),
      child: Column(
        children: [
          Expanded(
            child: AnimatedSwitcher(
              duration: Durations.long1,
              transitionBuilder: (child, animation) {
                return FadeTransition(opacity: animation, child: child);
              },
              child: (visibleScreenIndex == 0)
                  ? SongListScreen()
                  : (visibleScreenIndex == 1)
                      ? SearchScreen()
                      : (visibleScreenIndex == 2)
                          ? PlaylistsScreen()
                          : ArtistsScreen(),
            ),
          ),
          PlayerBar(),
        ],
      ),
    );
  }
}
