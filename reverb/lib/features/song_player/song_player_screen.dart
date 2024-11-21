import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
        bloc: cubit,
        builder: (context, state) {
          return switch (state) {
            Inactive() => Text("Nothing to play rn"),
            Playing() => Text(state.currentSong.title),
          };
        },
      ),
    );
  }
}
