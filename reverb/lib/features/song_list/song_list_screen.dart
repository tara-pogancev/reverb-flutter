import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reverb/core/domain/cubits/song_list/song_list_cubit.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/widgets/app_error_widget.dart';
import 'package:reverb/features/song_list/permission_required_widget.dart';
import 'package:reverb/features/song_list/song_card.dart';

class SongListScreen extends StatefulWidget {
  const SongListScreen({super.key});

  @override
  State<SongListScreen> createState() => _SongListScreenState();
}

class _SongListScreenState extends State<SongListScreen> {
  final SongListCubit songListCubit = IC.getIt();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SongListCubit, SongListState>(
      bloc: songListCubit,
      builder: (context, state) {
        return switch (state) {
          Error() => AppErrorWidget(),
          Loading() => CircularProgressIndicator(),
          PermissionRequired() => PermissionRequiredWidget(),
          Loaded() => ListView.builder(
              itemCount: state.songs.length,
              itemBuilder: (BuildContext context, int index) {
                final song = state.songs[index];
                return SongCard(song: song);
              },
            ),
        };
      },
    );
  }
}
