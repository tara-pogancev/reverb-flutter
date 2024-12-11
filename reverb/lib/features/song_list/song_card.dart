import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/domain/cubits/audio_player/audio_player_cubit.dart';
import 'package:reverb/core/extensions/context_extensions.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/style/app_color_scheme.dart';
import 'package:reverb/core/ui/style/app_text_styles.dart';
import 'package:reverb/core/ui/widgets/app_popup_menu_item.dart';
import 'package:reverb/features/song_list/add_song_to_playlist_sheet.dart';

class SongCard extends StatefulWidget {
  const SongCard(
      {super.key, required this.song, this.onTap, this.customTrailingWidget});

  final SongModel song;
  final Function()? onTap;
  final Widget? customTrailingWidget;

  @override
  State<SongCard> createState() => _SongCardState();
}

class _SongCardState extends State<SongCard> {
  final AudioPlayerCubit cubit = IC.getIt();

  bool isCurrent = false;

  void playSong() async {
    cubit.playSong(widget.song);
  }

  void addToPlaylist(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => AddSongToPlaylistSheet(
        song: widget.song,
      ),
    );
  }

  addToQueue(BuildContext context) {
    cubit.addToQueue(widget.song);
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      isCurrent = (cubit.state is Playing) &&
          (cubit.state as Playing).currentSong == widget.song;
    });
  }

  @override
  Widget build(BuildContext context) {
    const double audioArtworkSize = 40;
    final artistName =
        (widget.song.artist != "<unknown>" || widget.song.artist != null)
            ? widget.song.artist
            : Translations.of(context).player.unknownArtist;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: BlocListener<AudioPlayerCubit, AudioPlayerState>(
        listenWhen: (previous, current) =>
            (previous is Playing && previous.currentSong == widget.song) ||
            (current is Playing && current.currentSong == widget.song),
        listener: (context, state) {
          setState(() {
            isCurrent = (state as Playing).currentSong == widget.song;
          });
        },
        bloc: cubit,
        child: AnimatedContainer(
          width: double.infinity,
          curve: Curves.easeInOut,
          duration: Durations.medium4,
          color: (isCurrent)
              ? AppColorScheme.of(context).darkPurple.withOpacity(0.1)
              : Colors.transparent,
          child: ListTile(
            title: Text(
              widget.song.title + widget.song.title,
              style: AppTextStyles.of(context).primary,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              artistName!,
              style: AppTextStyles.of(context).secondary,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            leading: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                boxShadow: [
                  BoxShadow(
                    color: (context.getIsDarkTheme())
                        ? AppColorScheme.of(context).mangeta.withOpacity(0.5)
                        : Colors.transparent,
                    blurRadius: 7, // changes position of shadow
                  ),
                ],
              ),
              child: QueryArtworkWidget(
                id: widget.song.id,
                type: ArtworkType.AUDIO,
                artworkWidth: audioArtworkSize,
                artworkHeight: audioArtworkSize,
                size: 50,
                artworkBorder: BorderRadius.circular(30),
                nullArtworkWidget: Icon(
                  Icons.image_not_supported_outlined,
                  size: audioArtworkSize,
                ),
              ),
            ),
            onTap: (widget.onTap != null)
                ? () => widget.onTap!()
                : () => playSong(),
            trailing: widget.customTrailingWidget ??
                PopupMenuButton(
                  icon: Icon(
                    Icons.more_horiz,
                    color: AppColorScheme.of(context).mediumGray,
                  ),
                  itemBuilder: (BuildContext context) => [
                    AppPopupMenuItem.get(
                      context: context,
                      onPressed: () => addToPlaylist(context),
                      icon: Icons.list,
                      text: Translations.of(context).songList.addToPlaylist,
                    ),
                    AppPopupMenuItem.get(
                      context: context,
                      onPressed: () => addToQueue(context),
                      icon: Icons.library_add_outlined,
                      text: Translations.of(context).songList.addToQueue,
                    ),
                  ],
                ),
          ),
        ),
      ),
    );
  }
}
