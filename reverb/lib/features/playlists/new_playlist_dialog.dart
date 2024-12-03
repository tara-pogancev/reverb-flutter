// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/domain/cubits/playlist/playlist_cubit.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';

class NewPlaylistDialog extends StatefulWidget {
  const NewPlaylistDialog({
    super.key,
    this.playlist,
  });

  final PlaylistModel? playlist;

  @override
  State<NewPlaylistDialog> createState() => _NewPlaylistDialogState();
}

class _NewPlaylistDialogState extends State<NewPlaylistDialog> {
  final formKey = GlobalKey<FormState>();

  final PlaylistCubit playlistCubit = IC.getIt();

  String name = '';

  void save() {
    final isValid = formKey.currentState!.validate();
    if (isValid) {
      formKey.currentState!.save();

      if (widget.playlist != null) {
        playlistCubit.renamePlaylist(widget.playlist!, name);
      } else {
        playlistCubit.createPlaylist(name);
      }

      context.pop();
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.playlist != null) {
      setState(() {
        name = widget.playlist!.playlist;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: (widget.playlist != null)
          ? Text(Translations.of(context).playlists.rename)
          : Text(Translations.of(context).playlists.newPlaylist),
      content: Form(
        key: formKey,
        child: TextFormField(
          initialValue: name,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            labelText: Translations.of(context).playlists.playlistName,
          ),
          validator: FormBuilderValidators.compose(
            [
              FormBuilderValidators.required(),
              FormBuilderValidators.maxLength(30),
            ],
          ),
          onChanged: (value) {
            setState(() {
              name = value;
            });
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => context.pop(),
          child: Text(
            Translations.of(context).general.cancel,
          ),
        ),
        FilledButton(
          onPressed: () => save(),
          child: Text(
            Translations.of(context).general.save,
          ),
        ),
      ],
    );
  }
}
