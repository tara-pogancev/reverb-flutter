import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:on_audio_query_forked/on_audio_query.dart';
import 'package:reverb/core/domain/repositories/audio_query_repository.dart';
import 'package:reverb/core/i18n/strings.g.dart';
import 'package:reverb/core/injection_container.dart';
import 'package:reverb/core/ui/dialog_manager/dialog_manager.dart';

part 'song_list_state.dart';

class SongListCubit extends Cubit<SongListState> {
  final AudioQueryRepository audioQueryRepository = IC.getIt();

  SongListCubit() : super(SongListInitial()) {
    fetchSongs();
  }

  void fetchSongs() async {
    try {
      if (await audioQueryRepository.checkAndRequestPermission()) {
        List<SongModel> songs =
            await audioQueryRepository.fetchAudioFromDevice();
        emit(Loaded(songs: songs));
      } else {
        emit(PermissionRequired());
      }
    } on Exception {
      emit(Error());
      DialogManager.showGlobalSnackbar(
        snackbarText: (context) => Translations.of(context).error.fetchingSongs,
      );
    }
  }
}
