import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:reverb/core/domain/cubits/playlist/playlist_cubit.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';

class NewPlaylistDialog extends StatefulWidget {
  const NewPlaylistDialog({super.key});

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
      playlistCubit.createPlaylist(name);
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(Translations.of(context).playlists.newPlaylist),
      content: Form(
        key: formKey,
        child: TextFormField(
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
