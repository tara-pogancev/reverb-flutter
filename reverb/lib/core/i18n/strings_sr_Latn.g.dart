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
class TranslationsSrLatn implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsSrLatn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.srLatn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <sr-Latn>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsSrLatn _root = this; // ignore: unused_field

	@override 
	TranslationsSrLatn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsSrLatn(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsGeneralSrLatn general = _TranslationsGeneralSrLatn._(_root);
	@override late final _TranslationsBottomBarSrLatn bottomBar = _TranslationsBottomBarSrLatn._(_root);
	@override late final _TranslationsErrorSrLatn error = _TranslationsErrorSrLatn._(_root);
	@override late final _TranslationsSongListSrLatn songList = _TranslationsSongListSrLatn._(_root);
	@override late final _TranslationsPlayerSrLatn player = _TranslationsPlayerSrLatn._(_root);
	@override late final _TranslationsAudioEffectsSrLatn audioEffects = _TranslationsAudioEffectsSrLatn._(_root);
	@override late final _TranslationsSearchSrLatn search = _TranslationsSearchSrLatn._(_root);
	@override late final _TranslationsArtistsSrLatn artists = _TranslationsArtistsSrLatn._(_root);
	@override late final _TranslationsPlaylistsSrLatn playlists = _TranslationsPlaylistsSrLatn._(_root);
	@override late final _TranslationsSettingsSrLatn settings = _TranslationsSettingsSrLatn._(_root);
}

// Path: general
class _TranslationsGeneralSrLatn implements TranslationsGeneralEn {
	_TranslationsGeneralSrLatn._(this._root);

	final TranslationsSrLatn _root; // ignore: unused_field

	// Translations
	@override String get appName => 'Reverb';
	@override String get cancel => 'Otkaži';
	@override String get ok => 'OK';
	@override String get confirm => 'Potvrdi';
	@override String get save => 'Sačuvaj';
	@override String get comingSoon => 'Funkcija uskoro stiže! 🎉';
	@override String get viewAll => 'Prikaži sve';
	@override String get addNew => 'Dodaj novo';
	@override String get createNew => 'Kreiraj novo';
	@override String get upload => 'Učitaj';
	@override String get close => 'Zatvori';
	@override String get next => 'Sledeće';
	@override String get previous => 'Prethodno';
	@override String get add => 'Dodaj';
	@override String get remove => 'Ukloni';
	@override String get preview => 'Pregled';
	@override String get retry => 'Pokušaj ponovo';
	@override String get refresh => 'Osveži';
}

// Path: bottomBar
class _TranslationsBottomBarSrLatn implements TranslationsBottomBarEn {
	_TranslationsBottomBarSrLatn._(this._root);

	final TranslationsSrLatn _root; // ignore: unused_field

	// Translations
	@override String get music => 'Muzika';
	@override String get search => 'Pretraga';
	@override String get playlists => 'Plejliste';
	@override String get artists => 'Izvođači';
}

// Path: error
class _TranslationsErrorSrLatn implements TranslationsErrorEn {
	_TranslationsErrorSrLatn._(this._root);

	final TranslationsSrLatn _root; // ignore: unused_field

	// Translations
	@override String get generic => 'Došlo je do greške';
	@override String get fetchingSongs => 'Greška prilikom učitavanja pesama.';
	@override String get fetchingPlaylists => 'Greška prilikom učitavanja plejlista.';
	@override String get creatingPlaylist => 'Greška prilikom kreiranja plejliste.';
	@override String get errorAddingSongToPlaylist => 'Greška prilikom dodavanja pesme u plejlistu';
}

// Path: songList
class _TranslationsSongListSrLatn implements TranslationsSongListEn {
	_TranslationsSongListSrLatn._(this._root);

	final TranslationsSrLatn _root; // ignore: unused_field

	// Translations
	@override String get delete => 'Obriši';
	@override String get rename => 'Preimenuj';
	@override String get addToPlaylist => 'Dodaj u plejlistu';
	@override String get addedToPlaylist => 'Dodato u plejlistu';
	@override String get removedFromPlaylist => 'Uklonjeno iz plejliste';
	@override String get addToQueue => 'Dodaj u red čekanja';
	@override String get addedToQueue => 'Dodato u red čekanja';
	@override String get alreadyInQueue => 'Pesma je već u redu čekanja';
}

// Path: player
class _TranslationsPlayerSrLatn implements TranslationsPlayerEn {
	_TranslationsPlayerSrLatn._(this._root);

	final TranslationsSrLatn _root; // ignore: unused_field

	// Translations
	@override String get unknownArtist => 'Nepoznati izvođač';
	@override String get permissionRequired => 'Potrebna je dozvola!';
	@override String get pleaseEnableAppAccess => 'Molimo omogućite pristup aplikacije muzici.';
	@override String get allowAccess => 'Dozvoli pristup';
	@override String get allowInSettings => 'Ako dugme ne prikazuje opciju za dozvolu, molimo omogućite je u podešavanjima aplikacije.';
	@override String get noSongsAvailable => 'Nema dostupnih pesama.';
	@override String get nowPlaying => 'Trenutno se pušta';
	@override String get nextInQueue => 'Sledeće u redu';
	@override String get playingQueue => 'Red za puštanje';
	@override String get nothingInQueue => 'Ništa u redu čekanja';
}

// Path: audioEffects
class _TranslationsAudioEffectsSrLatn implements TranslationsAudioEffectsEn {
	_TranslationsAudioEffectsSrLatn._(this._root);

	final TranslationsSrLatn _root; // ignore: unused_field

	// Translations
	@override String get audioEffects => 'Audio efekti';
	@override String get on => 'UKLJUČENO';
	@override String get off => 'ISKLJUČENO';
	@override String get reverb => 'Reverberacija';
	@override String get echo => 'Eho';
	@override String get speedAndPitch => 'Brzina + Visina tona';
}

// Path: search
class _TranslationsSearchSrLatn implements TranslationsSearchEn {
	_TranslationsSearchSrLatn._(this._root);

	final TranslationsSrLatn _root; // ignore: unused_field

	// Translations
	@override String get search => 'Pretraga';
	@override String get hint => 'Pretražite svoju muziku...';
	@override String results({required Object n}) => 'Rezultati (${n})';
	@override String get noSongs => 'Nema pesama.';
}

// Path: artists
class _TranslationsArtistsSrLatn implements TranslationsArtistsEn {
	_TranslationsArtistsSrLatn._(this._root);

	final TranslationsSrLatn _root; // ignore: unused_field

	// Translations
	@override String artists({required Object n}) => 'Izvođači (${n})';
	@override String get noArtists => 'Nema izvođača.';
	@override String songsAndAlbums({required Object tracks, required Object albums}) => '${tracks} pesama, ${albums} albuma';
}

// Path: playlists
class _TranslationsPlaylistsSrLatn implements TranslationsPlaylistsEn {
	_TranslationsPlaylistsSrLatn._(this._root);

	final TranslationsSrLatn _root; // ignore: unused_field

	// Translations
	@override String playlists({required Object n}) => 'Plejliste (${n})';
	@override String tracks({required Object n}) => 'Numere (${n})';
	@override String get newPlaylist => 'Nova plejlista';
	@override String get manageSongs => 'upravljaj pesmama';
	@override String get playlistName => 'Naziv plejliste';
	@override String get noPlaylists => 'Nema plejlista.';
	@override String get addToPlaylist => 'Dodaj u plejlistu';
	@override String get removeFromPlaylist => 'Ukloni iz plejliste';
	@override String get rename => 'Preimenuj plejlistu';
	@override String get playlistRenamed => 'Plejlista preimenovana';
	@override String get deletePlaylist => 'Obriši plejlistu';
	@override String areYouSure({required Object name}) => 'Da li ste sigurni da želite da obrišete plejlistu \'${name}\'?';
	@override String get playlistDeleted => 'Plejlista obrisana';
	@override String get playlistCreated => 'Plejlista kreirana';
	@override String get noSongsInPlaylist => 'Prazna plejlista, dodajte neke pesme da biste počeli.';
	@override String get songAlreadyInPlaylist => 'Pesma je već u plejlisti';
}

// Path: settings
class _TranslationsSettingsSrLatn implements TranslationsSettingsEn {
	_TranslationsSettingsSrLatn._(this._root);

	final TranslationsSrLatn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Podešavanja';
	@override String get language => 'Jezik';
	@override String get darkTheme => 'Tamna tema';
	@override String get adjustAudio => 'Podešavanje audio efekata';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsSrLatn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'general.appName': return 'Reverb';
			case 'general.cancel': return 'Otkaži';
			case 'general.ok': return 'OK';
			case 'general.confirm': return 'Potvrdi';
			case 'general.save': return 'Sačuvaj';
			case 'general.comingSoon': return 'Funkcija uskoro stiže! 🎉';
			case 'general.viewAll': return 'Prikaži sve';
			case 'general.addNew': return 'Dodaj novo';
			case 'general.createNew': return 'Kreiraj novo';
			case 'general.upload': return 'Učitaj';
			case 'general.close': return 'Zatvori';
			case 'general.next': return 'Sledeće';
			case 'general.previous': return 'Prethodno';
			case 'general.add': return 'Dodaj';
			case 'general.remove': return 'Ukloni';
			case 'general.preview': return 'Pregled';
			case 'general.retry': return 'Pokušaj ponovo';
			case 'general.refresh': return 'Osveži';
			case 'bottomBar.music': return 'Muzika';
			case 'bottomBar.search': return 'Pretraga';
			case 'bottomBar.playlists': return 'Plejliste';
			case 'bottomBar.artists': return 'Izvođači';
			case 'error.generic': return 'Došlo je do greške';
			case 'error.fetchingSongs': return 'Greška prilikom učitavanja pesama.';
			case 'error.fetchingPlaylists': return 'Greška prilikom učitavanja plejlista.';
			case 'error.creatingPlaylist': return 'Greška prilikom kreiranja plejliste.';
			case 'error.errorAddingSongToPlaylist': return 'Greška prilikom dodavanja pesme u plejlistu';
			case 'songList.delete': return 'Obriši';
			case 'songList.rename': return 'Preimenuj';
			case 'songList.addToPlaylist': return 'Dodaj u plejlistu';
			case 'songList.addedToPlaylist': return 'Dodato u plejlistu';
			case 'songList.removedFromPlaylist': return 'Uklonjeno iz plejliste';
			case 'songList.addToQueue': return 'Dodaj u red čekanja';
			case 'songList.addedToQueue': return 'Dodato u red čekanja';
			case 'songList.alreadyInQueue': return 'Pesma je već u redu čekanja';
			case 'player.unknownArtist': return 'Nepoznati izvođač';
			case 'player.permissionRequired': return 'Potrebna je dozvola!';
			case 'player.pleaseEnableAppAccess': return 'Molimo omogućite pristup aplikacije muzici.';
			case 'player.allowAccess': return 'Dozvoli pristup';
			case 'player.allowInSettings': return 'Ako dugme ne prikazuje opciju za dozvolu, molimo omogućite je u podešavanjima aplikacije.';
			case 'player.noSongsAvailable': return 'Nema dostupnih pesama.';
			case 'player.nowPlaying': return 'Trenutno se pušta';
			case 'player.nextInQueue': return 'Sledeće u redu';
			case 'player.playingQueue': return 'Red za puštanje';
			case 'player.nothingInQueue': return 'Ništa u redu čekanja';
			case 'audioEffects.audioEffects': return 'Audio efekti';
			case 'audioEffects.on': return 'UKLJUČENO';
			case 'audioEffects.off': return 'ISKLJUČENO';
			case 'audioEffects.reverb': return 'Reverberacija';
			case 'audioEffects.echo': return 'Eho';
			case 'audioEffects.speedAndPitch': return 'Brzina + Visina tona';
			case 'search.search': return 'Pretraga';
			case 'search.hint': return 'Pretražite svoju muziku...';
			case 'search.results': return ({required Object n}) => 'Rezultati (${n})';
			case 'search.noSongs': return 'Nema pesama.';
			case 'artists.artists': return ({required Object n}) => 'Izvođači (${n})';
			case 'artists.noArtists': return 'Nema izvođača.';
			case 'artists.songsAndAlbums': return ({required Object tracks, required Object albums}) => '${tracks} pesama, ${albums} albuma';
			case 'playlists.playlists': return ({required Object n}) => 'Plejliste (${n})';
			case 'playlists.tracks': return ({required Object n}) => 'Numere (${n})';
			case 'playlists.newPlaylist': return 'Nova plejlista';
			case 'playlists.manageSongs': return 'upravljaj pesmama';
			case 'playlists.playlistName': return 'Naziv plejliste';
			case 'playlists.noPlaylists': return 'Nema plejlista.';
			case 'playlists.addToPlaylist': return 'Dodaj u plejlistu';
			case 'playlists.removeFromPlaylist': return 'Ukloni iz plejliste';
			case 'playlists.rename': return 'Preimenuj plejlistu';
			case 'playlists.playlistRenamed': return 'Plejlista preimenovana';
			case 'playlists.deletePlaylist': return 'Obriši plejlistu';
			case 'playlists.areYouSure': return ({required Object name}) => 'Da li ste sigurni da želite da obrišete plejlistu \'${name}\'?';
			case 'playlists.playlistDeleted': return 'Plejlista obrisana';
			case 'playlists.playlistCreated': return 'Plejlista kreirana';
			case 'playlists.noSongsInPlaylist': return 'Prazna plejlista, dodajte neke pesme da biste počeli.';
			case 'playlists.songAlreadyInPlaylist': return 'Pesma je već u plejlisti';
			case 'settings.title': return 'Podešavanja';
			case 'settings.language': return 'Jezik';
			case 'settings.darkTheme': return 'Tamna tema';
			case 'settings.adjustAudio': return 'Podešavanje audio efekata';
			default: return null;
		}
	}
}

