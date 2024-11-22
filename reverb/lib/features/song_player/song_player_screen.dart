import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reverb/core/domain/cubits/audio_effects/audio_effects_cubit.dart';
import 'package:reverb/core/domain/cubits/audio_player/audio_player_cubit.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/app_scaffold.dart';

class SongPlayerScreen extends StatefulWidget {
  const SongPlayerScreen({super.key});

  @override
  State<SongPlayerScreen> createState() => _SongPlayerScreenState();
}

class _SongPlayerScreenState extends State<SongPlayerScreen> {
  final AudioPlayerCubit cubit = IC.getIt();
  final AudioEffectsCubit effectsCubit = IC.getIt();

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
        bloc: cubit,
        builder: (context, state) {
          return switch (state) {
            Inactive() => Text("Nothing to play rn"),
            Playing() => Column(
                children: [
                  Text(state.currentSong.title),
                  ElevatedButton(
                    onPressed: () {
                      effectsCubit.setSpeed(0.8);
                    },
                    child: Text(
                      "0.8",
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      effectsCubit.setSpeed(0.9);
                    },
                    child: Text(
                      "0.9",
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      effectsCubit.setSpeed(1);
                    },
                    child: Text(
                      "1.5",
                    ),
                  ),
                ],
              ),
          };
        },
      ),
    );
  }
}
