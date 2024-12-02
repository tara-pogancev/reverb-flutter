import 'package:on_audio_query_forked/on_audio_query.dart';

class AudioQueryRepository {
  const AudioQueryRepository({required this.audioQuery});

  final OnAudioQuery audioQuery;

  Future<bool> hasPermission() async {
    return audioQuery.permissionsStatus();
  }

  Future<bool> checkAndRequestPermission() async {
    return audioQuery.checkAndRequest();
  }

  Future<List<SongModel>> fetchAudioFromDevice() async {
    return await audioQuery.querySongs(ignoreCase: true);
  }

  Future<List<PlaylistModel>> fetchPlaylistsFromDevice() async {
    return await audioQuery.queryPlaylists(ignoreCase: true);
  }

  Future<List<ArtistModel>> fetchArtistsFromDevice() async {
    return await audioQuery.queryArtists(ignoreCase: true);
  }

  Future<List<SongModel>> getSongsFromPlaylist(int playlistId) async {
    final List<SongModel> playlistSongs = await audioQuery.queryAudiosFrom(
      AudiosFromType.PLAYLIST,
      playlistId,
    );

    return playlistSongs;
  }
}
