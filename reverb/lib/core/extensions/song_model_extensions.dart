import 'package:flutter/material.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/i18n/strings.g.dart';

extension SongModelExtensions on SongModel {
  String getArtist(BuildContext context) {
    if (artist == null || artist == "<unknown>") {
      return Translations.of(context).player.unknownArtist;
    } else {
      return artist!;
    }
  }
}
