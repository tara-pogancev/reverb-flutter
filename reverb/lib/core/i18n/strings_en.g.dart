///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final TranslationsGeneralEn general = TranslationsGeneralEn._(_root);
	late final TranslationsBottomBarEn bottomBar = TranslationsBottomBarEn._(_root);
	late final TranslationsErrorEn error = TranslationsErrorEn._(_root);
	late final TranslationsSongListEn songList = TranslationsSongListEn._(_root);
	late final TranslationsPlayerEn player = TranslationsPlayerEn._(_root);
	late final TranslationsAudioEffectsEn audioEffects = TranslationsAudioEffectsEn._(_root);
	late final TranslationsSearchEn search = TranslationsSearchEn._(_root);
	late final TranslationsArtistsEn artists = TranslationsArtistsEn._(_root);
	late final TranslationsPlaylistsEn playlists = TranslationsPlaylistsEn._(_root);
	late final TranslationsSettingsEn settings = TranslationsSettingsEn._(_root);
}

// Path: general
class TranslationsGeneralEn {
	TranslationsGeneralEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get appName => 'Reverb';
	String get cancel => 'Cancel';
	String get ok => 'OK';
	String get confirm => 'Confirm';
	String get save => 'Save';
	String get comingSoon => 'Feature coming soon! 🎉';
	String get viewAll => 'View all';
	String get addNew => 'Add new';
	String get createNew => 'Create new';
	String get upload => 'Upload';
	String get close => 'Close';
	String get next => 'Next';
	String get previous => 'Previous';
	String get add => 'Add';
	String get remove => 'Remove';
	String get preview => 'Preview';
	String get retry => 'Retry';
	String get refresh => 'Refresh';
}

// Path: bottomBar
class TranslationsBottomBarEn {
	TranslationsBottomBarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get music => 'Music';
	String get search => 'Search';
	String get playlists => 'Playlists';
	String get artists => 'Artists';
}

// Path: error
class TranslationsErrorEn {
	TranslationsErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get generic => 'An error occurred';
	String get fetchingSongs => 'Error fetching songs.';
	String get fetchingPlaylists => 'Error fetching playlists.';
	String get creatingPlaylist => 'Error creating playlist.';
	String get errorAddingSongToPlaylist => 'Error adding song to playlist';
}

// Path: songList
class TranslationsSongListEn {
	TranslationsSongListEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get delete => 'Delete';
	String get rename => 'Rename';
	String get addToPlaylist => 'Add to Playlist';
	String get addedToPlaylist => 'Added to Playlist';
	String get removedFromPlaylist => 'Removed from Playlist';
	String get addToQueue => 'Add to Queue';
	String get addedToQueue => 'Added to Queue';
	String get alreadyInQueue => 'Song already in queue';
}

// Path: player
class TranslationsPlayerEn {
	TranslationsPlayerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get unknownArtist => 'Unknown artist';
	String get permissionRequired => 'Permission required!';
	String get pleaseEnableAppAccess => 'Please enable app\'s access to music.';
	String get allowAccess => 'Allow access';
	String get allowInSettings => 'If the button doesn\'t prompt you with allowing access, please enable it in the app\'s settings.';
	String get noSongsAvailable => 'No songs available.';
	String get nowPlaying => 'Now playing';
	String get playingQueue => 'Playing queue';
	String get nothingInQueue => 'Nothing in queue';
}

// Path: audioEffects
class TranslationsAudioEffectsEn {
	TranslationsAudioEffectsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get audioEffects => 'Audio Effects';
	String get on => 'ON';
	String get off => 'OFF';
	String get reverb => 'Reverb';
	String get echo => 'Echo';
	String get speedAndPitch => 'Speed + Pitch';
}

// Path: search
class TranslationsSearchEn {
	TranslationsSearchEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get search => 'Search';
	String get hint => 'Search your music...';
	String results({required Object n}) => 'Results (${n})';
	String get noSongs => 'No songs.';
}

// Path: artists
class TranslationsArtistsEn {
	TranslationsArtistsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String artists({required Object n}) => 'Artist (${n})';
	String get noArtists => 'No artists.';
	String songsAndAlbums({required Object tracks, required Object albums}) => '${tracks} tracks, ${albums} albums';
}

// Path: playlists
class TranslationsPlaylistsEn {
	TranslationsPlaylistsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String playlists({required Object n}) => 'Playlists (${n})';
	String tracks({required Object n}) => 'Tracks (${n})';
	String get newPlaylist => 'New playlist';
	String get manageSongs => 'manage songs';
	String get playlistName => 'Playlist name';
	String get noPlaylists => 'No playlists.';
	String get addToPlaylist => 'Add to playlist';
	String get removeFromPlaylist => 'Remove from playlist';
	String get rename => 'Rename playlist';
	String get playlistRenamed => 'Playlist renamed';
	String get deletePlaylist => 'Delete playlist';
	String areYouSure({required Object name}) => 'Are you sure you want to delete playlist \'${name}\'?';
	String get playlistDeleted => 'Playlist deleted';
	String get playlistCreated => 'Playlist created';
	String get noSongsInPlaylist => 'Empty playlist, add some songs to get started.';
	String get songAlreadyInPlaylist => 'Song already in playlist';
}

// Path: settings
class TranslationsSettingsEn {
	TranslationsSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get darkTheme => 'Dark theme';
	String get adjustAudio => 'Adjust audio effects';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'general.appName': return 'Reverb';
			case 'general.cancel': return 'Cancel';
			case 'general.ok': return 'OK';
			case 'general.confirm': return 'Confirm';
			case 'general.save': return 'Save';
			case 'general.comingSoon': return 'Feature coming soon! 🎉';
			case 'general.viewAll': return 'View all';
			case 'general.addNew': return 'Add new';
			case 'general.createNew': return 'Create new';
			case 'general.upload': return 'Upload';
			case 'general.close': return 'Close';
			case 'general.next': return 'Next';
			case 'general.previous': return 'Previous';
			case 'general.add': return 'Add';
			case 'general.remove': return 'Remove';
			case 'general.preview': return 'Preview';
			case 'general.retry': return 'Retry';
			case 'general.refresh': return 'Refresh';
			case 'bottomBar.music': return 'Music';
			case 'bottomBar.search': return 'Search';
			case 'bottomBar.playlists': return 'Playlists';
			case 'bottomBar.artists': return 'Artists';
			case 'error.generic': return 'An error occurred';
			case 'error.fetchingSongs': return 'Error fetching songs.';
			case 'error.fetchingPlaylists': return 'Error fetching playlists.';
			case 'error.creatingPlaylist': return 'Error creating playlist.';
			case 'error.errorAddingSongToPlaylist': return 'Error adding song to playlist';
			case 'songList.delete': return 'Delete';
			case 'songList.rename': return 'Rename';
			case 'songList.addToPlaylist': return 'Add to Playlist';
			case 'songList.addedToPlaylist': return 'Added to Playlist';
			case 'songList.removedFromPlaylist': return 'Removed from Playlist';
			case 'songList.addToQueue': return 'Add to Queue';
			case 'songList.addedToQueue': return 'Added to Queue';
			case 'songList.alreadyInQueue': return 'Song already in queue';
			case 'player.unknownArtist': return 'Unknown artist';
			case 'player.permissionRequired': return 'Permission required!';
			case 'player.pleaseEnableAppAccess': return 'Please enable app\'s access to music.';
			case 'player.allowAccess': return 'Allow access';
			case 'player.allowInSettings': return 'If the button doesn\'t prompt you with allowing access, please enable it in the app\'s settings.';
			case 'player.noSongsAvailable': return 'No songs available.';
			case 'player.nowPlaying': return 'Now playing';
			case 'player.playingQueue': return 'Playing queue';
			case 'player.nothingInQueue': return 'Nothing in queue';
			case 'audioEffects.audioEffects': return 'Audio Effects';
			case 'audioEffects.on': return 'ON';
			case 'audioEffects.off': return 'OFF';
			case 'audioEffects.reverb': return 'Reverb';
			case 'audioEffects.echo': return 'Echo';
			case 'audioEffects.speedAndPitch': return 'Speed + Pitch';
			case 'search.search': return 'Search';
			case 'search.hint': return 'Search your music...';
			case 'search.results': return ({required Object n}) => 'Results (${n})';
			case 'search.noSongs': return 'No songs.';
			case 'artists.artists': return ({required Object n}) => 'Artist (${n})';
			case 'artists.noArtists': return 'No artists.';
			case 'artists.songsAndAlbums': return ({required Object tracks, required Object albums}) => '${tracks} tracks, ${albums} albums';
			case 'playlists.playlists': return ({required Object n}) => 'Playlists (${n})';
			case 'playlists.tracks': return ({required Object n}) => 'Tracks (${n})';
			case 'playlists.newPlaylist': return 'New playlist';
			case 'playlists.manageSongs': return 'manage songs';
			case 'playlists.playlistName': return 'Playlist name';
			case 'playlists.noPlaylists': return 'No playlists.';
			case 'playlists.addToPlaylist': return 'Add to playlist';
			case 'playlists.removeFromPlaylist': return 'Remove from playlist';
			case 'playlists.rename': return 'Rename playlist';
			case 'playlists.playlistRenamed': return 'Playlist renamed';
			case 'playlists.deletePlaylist': return 'Delete playlist';
			case 'playlists.areYouSure': return ({required Object name}) => 'Are you sure you want to delete playlist \'${name}\'?';
			case 'playlists.playlistDeleted': return 'Playlist deleted';
			case 'playlists.playlistCreated': return 'Playlist created';
			case 'playlists.noSongsInPlaylist': return 'Empty playlist, add some songs to get started.';
			case 'playlists.songAlreadyInPlaylist': return 'Song already in playlist';
			case 'settings.darkTheme': return 'Dark theme';
			case 'settings.adjustAudio': return 'Adjust audio effects';
			default: return null;
		}
	}
}

