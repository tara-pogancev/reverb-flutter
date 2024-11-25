import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/domain/cubits/song_list/song_list_cubit.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/widgets/app_error_widget.dart';
import 'package:reverb/core/ui/widgets/empty_widget.dart';
import 'package:reverb/features/song_list/permission_required_widget.dart';
import 'package:reverb/features/song_list/song_card.dart';

class SongListScreen extends StatefulWidget {
  const SongListScreen({super.key, this.songs});

  final List<SongModel>? songs;

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
        return (widget.songs != null)
            ? (widget.songs!.isNotEmpty)
                ? ListView.builder(
                    itemCount: widget.songs!.length,
                    itemBuilder: (BuildContext context, int index) {
                      final song = widget.songs![index];
                      return SongCard(song: song);
                    },
                  )
                : EmptyWidget(
                    message: Translations.of(context).search.noSongs,
                  )
            : switch (state) {
                Error() => AppErrorWidget(),
                Loading() => CircularProgressIndicator(),
                PermissionRequired() => PermissionRequiredWidget(),
                Loaded() => (state.songs.isNotEmpty)
                    ? ListView.builder(
                        itemCount: state.songs.length,
                        itemBuilder: (BuildContext context, int index) {
                          final song = state.songs[index];
                          return SongCard(song: song);
                        },
                      )
                    : EmptyWidget(
                        message: Translations.of(context).search.noSongs),
              };
      },
    );
  }
}
