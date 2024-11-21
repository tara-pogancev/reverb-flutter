import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reverb/core/domain/cubits/audio_player/audio_player_cubit.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/router/app_router.dart';

class PlayerBar extends StatefulWidget {
  const PlayerBar({super.key});

  @override
  State<PlayerBar> createState() => _PlayerBarState();
}

class _PlayerBarState extends State<PlayerBar> {
  final AudioPlayerCubit cubit = IC.getIt();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
      bloc: cubit,
      builder: (context, state) {
        return switch (state) {
          Error() => Icon(Icons.error),
          Playing() => InkWell(
              onTap: () => context.push(Routes.songPlayer),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    state.currentSong.title,
                  ),
                  Text(
                    state.currentSong.artist ?? "-",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.repeat),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.skip_previous),
                      ),
                      IconButton(
                        onPressed: () => cubit.togglePause(),
                        icon: Icon(Icons.pause),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.skip_next),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.shuffle),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          Inactive() => Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Nothing.")],
              ),
            ),
        };
      },
    );
  }
}
