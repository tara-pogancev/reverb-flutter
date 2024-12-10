///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsDe implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsDe _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsGeneralDe general = _TranslationsGeneralDe._(_root);
	@override late final _TranslationsBottomBarDe bottomBar = _TranslationsBottomBarDe._(_root);
	@override late final _TranslationsErrorDe error = _TranslationsErrorDe._(_root);
	@override late final _TranslationsSongListDe songList = _TranslationsSongListDe._(_root);
	@override late final _TranslationsPlayerDe player = _TranslationsPlayerDe._(_root);
	@override late final _TranslationsAudioEffectsDe audioEffects = _TranslationsAudioEffectsDe._(_root);
	@override late final _TranslationsSearchDe search = _TranslationsSearchDe._(_root);
	@override late final _TranslationsArtistsDe artists = _TranslationsArtistsDe._(_root);
	@override late final _TranslationsPlaylistsDe playlists = _TranslationsPlaylistsDe._(_root);
	@override late final _TranslationsSettingsDe settings = _TranslationsSettingsDe._(_root);
}

// Path: general
class _TranslationsGeneralDe implements TranslationsGeneralEn {
	_TranslationsGeneralDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get appName => 'Reverb';
	@override String get cancel => 'Abbrechen';
	@override String get ok => 'OK';
	@override String get confirm => 'Bestätigen';
	@override String get save => 'Speichern';
	@override String get comingSoon => 'Funktion kommt bald! 🎉';
	@override String get viewAll => 'Alle anzeigen';
	@override String get addNew => 'Neu hinzufügen';
	@override String get createNew => 'Neu erstellen';
	@override String get upload => 'Hochladen';
	@override String get close => 'Schließen';
	@override String get next => 'Weiter';
	@override String get previous => 'Zurück';
	@override String get add => 'Hinzufügen';
	@override String get remove => 'Entfernen';
	@override String get preview => 'Vorschau';
	@override String get retry => 'Erneut versuchen';
	@override String get refresh => 'Aktualisieren';
}

// Path: bottomBar
class _TranslationsBottomBarDe implements TranslationsBottomBarEn {
	_TranslationsBottomBarDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get music => 'Musik';
	@override String get search => 'Suche';
	@override String get playlists => 'Wiedergabelisten';
	@override String get artists => 'Künstler';
}

// Path: error
class _TranslationsErrorDe implements TranslationsErrorEn {
	_TranslationsErrorDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get generic => 'Ein Fehler ist aufgetreten';
	@override String get fetchingSongs => 'Fehler beim Abrufen der Songs.';
	@override String get fetchingPlaylists => 'Fehler beim Abrufen der Wiedergabelisten.';
	@override String get creatingPlaylist => 'Fehler beim Erstellen der Wiedergabeliste.';
	@override String get errorAddingSongToPlaylist => 'Fehler beim Hinzufügen des Songs zur Wiedergabeliste.';
}

// Path: songList
class _TranslationsSongListDe implements TranslationsSongListEn {
	_TranslationsSongListDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get delete => 'Löschen';
	@override String get rename => 'Umbenennen';
	@override String get addToPlaylist => 'Zur Wiedergabeliste hinzufügen';
	@override String get addedToPlaylist => 'Zur Wiedergabeliste hinzugefügt';
	@override String get removedFromPlaylist => 'Aus der Wiedergabeliste entfernt';
	@override String get addToQueue => 'Zur Warteschlange hinzufügen';
	@override String get addedToQueue => 'Zur Warteschlange hinzugefügt';
	@override String get alreadyInQueue => 'Song bereits in der Warteschlange';
}

// Path: player
class _TranslationsPlayerDe implements TranslationsPlayerEn {
	_TranslationsPlayerDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get unknownArtist => 'Unbekannter Künstler';
	@override String get permissionRequired => 'Berechtigung erforderlich!';
	@override String get pleaseEnableAppAccess => 'Bitte erlauben Sie der App den Zugriff auf Musik.';
	@override String get allowAccess => 'Zugriff erlauben';
	@override String get allowInSettings => 'Falls die Schaltfläche keine Berechtigungsanfrage öffnet, aktivieren Sie den Zugriff bitte in den Einstellungen der App.';
	@override String get noSongsAvailable => 'Keine Songs verfügbar.';
	@override String get nowPlaying => 'Jetzt läuft';
	@override String get nextInQueue => 'Nächster in der Warteschlange';
	@override String get playingQueue => 'Wiedergabewarteschlange';
	@override String get nothingInQueue => 'Nichts in der Warteschlange';
}

// Path: audioEffects
class _TranslationsAudioEffectsDe implements TranslationsAudioEffectsEn {
	_TranslationsAudioEffectsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get audioEffects => 'Audioeffekte';
	@override String get on => 'EIN';
	@override String get off => 'AUS';
	@override String get reverb => 'Halleffekt';
	@override String get echo => 'Echo';
	@override String get speedAndPitch => 'Geschwindigkeit + Tonhöhe';
}

// Path: search
class _TranslationsSearchDe implements TranslationsSearchEn {
	_TranslationsSearchDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get search => 'Suchen';
	@override String get hint => 'Durchsuchen Sie Ihre Musik...';
	@override String results({required Object n}) => 'Ergebnisse (${n})';
	@override String get noSongs => 'Keine Songs.';
}

// Path: artists
class _TranslationsArtistsDe implements TranslationsArtistsEn {
	_TranslationsArtistsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String artists({required Object n}) => 'Künstler (${n})';
	@override String get noArtists => 'Keine Künstler.';
	@override String songsAndAlbums({required Object tracks, required Object albums}) => '${tracks} Titel, ${albums} Alben';
}

// Path: playlists
class _TranslationsPlaylistsDe implements TranslationsPlaylistsEn {
	_TranslationsPlaylistsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String playlists({required Object n}) => 'Wiedergabelisten (${n})';
	@override String tracks({required Object n}) => 'Titel (${n})';
	@override String get newPlaylist => 'Neue Wiedergabeliste';
	@override String get manageSongs => 'Songs verwalten';
	@override String get playlistName => 'Name der Wiedergabeliste';
	@override String get noPlaylists => 'Keine Wiedergabelisten.';
	@override String get addToPlaylist => 'Zur Wiedergabeliste hinzufügen';
	@override String get removeFromPlaylist => 'Aus der Wiedergabeliste entfernen';
	@override String get rename => 'Wiedergabeliste umbenennen';
	@override String get playlistRenamed => 'Wiedergabeliste umbenannt';
	@override String get deletePlaylist => 'Wiedergabeliste löschen';
	@override String areYouSure({required Object name}) => 'Möchten Sie die Wiedergabeliste \'${name}\' wirklich löschen?';
	@override String get playlistDeleted => 'Wiedergabeliste gelöscht';
	@override String get playlistCreated => 'Wiedergabeliste erstellt';
	@override String get noSongsInPlaylist => 'Leere Wiedergabeliste, fügen Sie einige Songs hinzu, um zu starten.';
	@override String get songAlreadyInPlaylist => 'Song bereits in der Wiedergabeliste';
}

// Path: settings
class _TranslationsSettingsDe implements TranslationsSettingsEn {
	_TranslationsSettingsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Einstellungen';
	@override String get language => 'Sprache';
	@override String get darkTheme => 'Dunkles Thema';
	@override String get adjustAudio => 'Audioeffekte anpassen';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsDe {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'general.appName': return 'Reverb';
			case 'general.cancel': return 'Abbrechen';
			case 'general.ok': return 'OK';
			case 'general.confirm': return 'Bestätigen';
			case 'general.save': return 'Speichern';
			case 'general.comingSoon': return 'Funktion kommt bald! 🎉';
			case 'general.viewAll': return 'Alle anzeigen';
			case 'general.addNew': return 'Neu hinzufügen';
			case 'general.createNew': return 'Neu erstellen';
			case 'general.upload': return 'Hochladen';
			case 'general.close': return 'Schließen';
			case 'general.next': return 'Weiter';
			case 'general.previous': return 'Zurück';
			case 'general.add': return 'Hinzufügen';
			case 'general.remove': return 'Entfernen';
			case 'general.preview': return 'Vorschau';
			case 'general.retry': return 'Erneut versuchen';
			case 'general.refresh': return 'Aktualisieren';
			case 'bottomBar.music': return 'Musik';
			case 'bottomBar.search': return 'Suche';
			case 'bottomBar.playlists': return 'Wiedergabelisten';
			case 'bottomBar.artists': return 'Künstler';
			case 'error.generic': return 'Ein Fehler ist aufgetreten';
			case 'error.fetchingSongs': return 'Fehler beim Abrufen der Songs.';
			case 'error.fetchingPlaylists': return 'Fehler beim Abrufen der Wiedergabelisten.';
			case 'error.creatingPlaylist': return 'Fehler beim Erstellen der Wiedergabeliste.';
			case 'error.errorAddingSongToPlaylist': return 'Fehler beim Hinzufügen des Songs zur Wiedergabeliste.';
			case 'songList.delete': return 'Löschen';
			case 'songList.rename': return 'Umbenennen';
			case 'songList.addToPlaylist': return 'Zur Wiedergabeliste hinzufügen';
			case 'songList.addedToPlaylist': return 'Zur Wiedergabeliste hinzugefügt';
			case 'songList.removedFromPlaylist': return 'Aus der Wiedergabeliste entfernt';
			case 'songList.addToQueue': return 'Zur Warteschlange hinzufügen';
			case 'songList.addedToQueue': return 'Zur Warteschlange hinzugefügt';
			case 'songList.alreadyInQueue': return 'Song bereits in der Warteschlange';
			case 'player.unknownArtist': return 'Unbekannter Künstler';
			case 'player.permissionRequired': return 'Berechtigung erforderlich!';
			case 'player.pleaseEnableAppAccess': return 'Bitte erlauben Sie der App den Zugriff auf Musik.';
			case 'player.allowAccess': return 'Zugriff erlauben';
			case 'player.allowInSettings': return 'Falls die Schaltfläche keine Berechtigungsanfrage öffnet, aktivieren Sie den Zugriff bitte in den Einstellungen der App.';
			case 'player.noSongsAvailable': return 'Keine Songs verfügbar.';
			case 'player.nowPlaying': return 'Jetzt läuft';
			case 'player.nextInQueue': return 'Nächster in der Warteschlange';
			case 'player.playingQueue': return 'Wiedergabewarteschlange';
			case 'player.nothingInQueue': return 'Nichts in der Warteschlange';
			case 'audioEffects.audioEffects': return 'Audioeffekte';
			case 'audioEffects.on': return 'EIN';
			case 'audioEffects.off': return 'AUS';
			case 'audioEffects.reverb': return 'Halleffekt';
			case 'audioEffects.echo': return 'Echo';
			case 'audioEffects.speedAndPitch': return 'Geschwindigkeit + Tonhöhe';
			case 'search.search': return 'Suchen';
			case 'search.hint': return 'Durchsuchen Sie Ihre Musik...';
			case 'search.results': return ({required Object n}) => 'Ergebnisse (${n})';
			case 'search.noSongs': return 'Keine Songs.';
			case 'artists.artists': return ({required Object n}) => 'Künstler (${n})';
			case 'artists.noArtists': return 'Keine Künstler.';
			case 'artists.songsAndAlbums': return ({required Object tracks, required Object albums}) => '${tracks} Titel, ${albums} Alben';
			case 'playlists.playlists': return ({required Object n}) => 'Wiedergabelisten (${n})';
			case 'playlists.tracks': return ({required Object n}) => 'Titel (${n})';
			case 'playlists.newPlaylist': return 'Neue Wiedergabeliste';
			case 'playlists.manageSongs': return 'Songs verwalten';
			case 'playlists.playlistName': return 'Name der Wiedergabeliste';
			case 'playlists.noPlaylists': return 'Keine Wiedergabelisten.';
			case 'playlists.addToPlaylist': return 'Zur Wiedergabeliste hinzufügen';
			case 'playlists.removeFromPlaylist': return 'Aus der Wiedergabeliste entfernen';
			case 'playlists.rename': return 'Wiedergabeliste umbenennen';
			case 'playlists.playlistRenamed': return 'Wiedergabeliste umbenannt';
			case 'playlists.deletePlaylist': return 'Wiedergabeliste löschen';
			case 'playlists.areYouSure': return ({required Object name}) => 'Möchten Sie die Wiedergabeliste \'${name}\' wirklich löschen?';
			case 'playlists.playlistDeleted': return 'Wiedergabeliste gelöscht';
			case 'playlists.playlistCreated': return 'Wiedergabeliste erstellt';
			case 'playlists.noSongsInPlaylist': return 'Leere Wiedergabeliste, fügen Sie einige Songs hinzu, um zu starten.';
			case 'playlists.songAlreadyInPlaylist': return 'Song bereits in der Wiedergabeliste';
			case 'settings.title': return 'Einstellungen';
			case 'settings.language': return 'Sprache';
			case 'settings.darkTheme': return 'Dunkles Thema';
			case 'settings.adjustAudio': return 'Audioeffekte anpassen';
			default: return null;
		}
	}
}

