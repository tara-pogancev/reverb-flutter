import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reverb/core/consts.dart';
import 'package:reverb/core/domain/cubits/song_list/song_list_cubit.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/widgets/app_error_widget.dart';
import 'package:reverb/core/ui/widgets/divider_with_title.dart';
import 'package:reverb/core/ui/widgets/empty_widget.dart';
import 'package:reverb/features/artists/artist_card.dart';
import 'package:reverb/features/song_list/permission_required_widget.dart';

class ArtistsScreen extends StatefulWidget {
  const ArtistsScreen({super.key});

  @override
  State<ArtistsScreen> createState() => _ArtistsScreenState();
}

class _ArtistsScreenState extends State<ArtistsScreen> {
  final SongListCubit cubit = IC.getIt();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SongListCubit, SongListState>(
      bloc: cubit,
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPagePadding),
              child: DividerWithTitle(
                title: Translations.of(context)
                    .artists
                    .artists(n: (state is Loaded) ? state.artists.length : 0),
              ),
            ),
            Expanded(
              child: switch (state) {
                Error() => AppErrorWidget(),
                Loading() => Center(child: CircularProgressIndicator()),
                PermissionRequired() => PermissionRequiredWidget(),
                Loaded() => (state.artists.isNotEmpty)
                    ? ListView.builder(
                        padding:
                            EdgeInsets.only(bottom: bottomPlayerBarPadding),
                        itemCount: state.artists.length,
                        itemBuilder: (BuildContext context, int index) {
                          final artist = state.artists[index];
                          return ArtistCard(artist: artist);
                        },
                      )
                    : EmptyWidget(
                        message: Translations.of(context).artists.noArtists,
                      ),
              },
            ),
          ],
        );
      },
    );
  }
}
