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
class TranslationsFr implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsFr _root = this; // ignore: unused_field

	@override 
	TranslationsFr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFr(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsGeneralFr general = _TranslationsGeneralFr._(_root);
	@override late final _TranslationsBottomBarFr bottomBar = _TranslationsBottomBarFr._(_root);
	@override late final _TranslationsErrorFr error = _TranslationsErrorFr._(_root);
	@override late final _TranslationsSongListFr songList = _TranslationsSongListFr._(_root);
	@override late final _TranslationsPlayerFr player = _TranslationsPlayerFr._(_root);
	@override late final _TranslationsAudioEffectsFr audioEffects = _TranslationsAudioEffectsFr._(_root);
	@override late final _TranslationsSearchFr search = _TranslationsSearchFr._(_root);
	@override late final _TranslationsArtistsFr artists = _TranslationsArtistsFr._(_root);
	@override late final _TranslationsPlaylistsFr playlists = _TranslationsPlaylistsFr._(_root);
	@override late final _TranslationsSettingsFr settings = _TranslationsSettingsFr._(_root);
}

// Path: general
class _TranslationsGeneralFr implements TranslationsGeneralEn {
	_TranslationsGeneralFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get appName => 'Reverb';
	@override String get cancel => 'Annuler';
	@override String get ok => 'OK';
	@override String get confirm => 'Confirmer';
	@override String get save => 'Enregistrer';
	@override String get comingSoon => 'Fonctionnalité à venir bientôt ! 🎉';
	@override String get viewAll => 'Tout voir';
	@override String get addNew => 'Ajouter nouveau';
	@override String get createNew => 'Créer nouveau';
	@override String get upload => 'Télécharger';
	@override String get close => 'Fermer';
	@override String get next => 'Suivant';
	@override String get previous => 'Précédent';
	@override String get add => 'Ajouter';
	@override String get remove => 'Retirer';
	@override String get preview => 'Aperçu';
	@override String get retry => 'Réessayer';
	@override String get refresh => 'Rafraîchir';
}

// Path: bottomBar
class _TranslationsBottomBarFr implements TranslationsBottomBarEn {
	_TranslationsBottomBarFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get music => 'Musique';
	@override String get search => 'Recherche';
	@override String get playlists => 'Playlists';
	@override String get artists => 'Artistes';
}

// Path: error
class _TranslationsErrorFr implements TranslationsErrorEn {
	_TranslationsErrorFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get generic => 'Une erreur s\'est produite';
	@override String get fetchingSongs => 'Erreur lors de la récupération des chansons.';
	@override String get fetchingPlaylists => 'Erreur lors de la récupération des playlists.';
	@override String get creatingPlaylist => 'Erreur lors de la création de la playlist.';
	@override String get errorAddingSongToPlaylist => 'Erreur lors de l\'ajout de la chanson à la playlist';
}

// Path: songList
class _TranslationsSongListFr implements TranslationsSongListEn {
	_TranslationsSongListFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get delete => 'Supprimer';
	@override String get rename => 'Renommer';
	@override String get addToPlaylist => 'Ajouter à la playlist';
	@override String get addedToPlaylist => 'Ajouté à la playlist';
	@override String get removedFromPlaylist => 'Retiré de la playlist';
	@override String get addToQueue => 'Ajouter à la file d\'attente';
	@override String get addedToQueue => 'Ajouté à la file d\'attente';
	@override String get alreadyInQueue => 'Chanson déjà dans la file d\'attente';
}

// Path: player
class _TranslationsPlayerFr implements TranslationsPlayerEn {
	_TranslationsPlayerFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get unknownArtist => 'Artiste inconnu';
	@override String get permissionRequired => 'Permission requise !';
	@override String get pleaseEnableAppAccess => 'Veuillez autoriser l\'accès de l\'application à la musique.';
	@override String get allowAccess => 'Autoriser l\'accès';
	@override String get allowInSettings => 'Si le bouton ne vous invite pas à autoriser l\'accès, veuillez l\'activer dans les paramètres de l\'application.';
	@override String get noSongsAvailable => 'Aucune chanson disponible.';
	@override String get nowPlaying => 'Lecture en cours';
	@override String get nextInQueue => 'Suivant dans la file d\'attente';
	@override String get playingQueue => 'File d\'attente de lecture';
	@override String get nothingInQueue => 'Rien dans la file d\'attente';
}

// Path: audioEffects
class _TranslationsAudioEffectsFr implements TranslationsAudioEffectsEn {
	_TranslationsAudioEffectsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get audioEffects => 'Effets audio';
	@override String get on => 'Activé';
	@override String get off => 'Désactivé';
	@override String get reverb => 'Réverbération';
	@override String get echo => 'Écho';
	@override String get speedAndPitch => 'Vitesse + Pitch';
}

// Path: search
class _TranslationsSearchFr implements TranslationsSearchEn {
	_TranslationsSearchFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get search => 'Rechercher';
	@override String get hint => 'Rechercher votre musique...';
	@override String results({required Object n}) => 'Résultats (${n})';
	@override String get noSongs => 'Aucune chanson.';
}

// Path: artists
class _TranslationsArtistsFr implements TranslationsArtistsEn {
	_TranslationsArtistsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String artists({required Object n}) => 'Artistes (${n})';
	@override String get noArtists => 'Aucun artiste.';
	@override String songsAndAlbums({required Object tracks, required Object albums}) => '${tracks} morceaux, ${albums} albums';
}

// Path: playlists
class _TranslationsPlaylistsFr implements TranslationsPlaylistsEn {
	_TranslationsPlaylistsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String playlists({required Object n}) => 'Playlists (${n})';
	@override String tracks({required Object n}) => 'Pistes (${n})';
	@override String get newPlaylist => 'Nouvelle playlist';
	@override String get manageSongs => 'gérer les chansons';
	@override String get playlistName => 'Nom de la playlist';
	@override String get noPlaylists => 'Aucune playlist.';
	@override String get addToPlaylist => 'Ajouter à la playlist';
	@override String get removeFromPlaylist => 'Retirer de la playlist';
	@override String get rename => 'Renommer la playlist';
	@override String get playlistRenamed => 'Playlist renommée';
	@override String get deletePlaylist => 'Supprimer la playlist';
	@override String areYouSure({required Object name}) => 'Êtes-vous sûr de vouloir supprimer la playlist \'${name}\' ?';
	@override String get playlistDeleted => 'Playlist supprimée';
	@override String get playlistCreated => 'Playlist créée';
	@override String get noSongsInPlaylist => 'Playlist vide, ajoutez des chansons pour commencer.';
	@override String get songAlreadyInPlaylist => 'Chanson déjà dans la playlist';
}

// Path: settings
class _TranslationsSettingsFr implements TranslationsSettingsEn {
	_TranslationsSettingsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Paramètres';
	@override String get language => 'Langue';
	@override String get darkTheme => 'Thème sombre';
	@override String get adjustAudio => 'Ajuster les effets audio';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsFr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'general.appName': return 'Reverb';
			case 'general.cancel': return 'Annuler';
			case 'general.ok': return 'OK';
			case 'general.confirm': return 'Confirmer';
			case 'general.save': return 'Enregistrer';
			case 'general.comingSoon': return 'Fonctionnalité à venir bientôt ! 🎉';
			case 'general.viewAll': return 'Tout voir';
			case 'general.addNew': return 'Ajouter nouveau';
			case 'general.createNew': return 'Créer nouveau';
			case 'general.upload': return 'Télécharger';
			case 'general.close': return 'Fermer';
			case 'general.next': return 'Suivant';
			case 'general.previous': return 'Précédent';
			case 'general.add': return 'Ajouter';
			case 'general.remove': return 'Retirer';
			case 'general.preview': return 'Aperçu';
			case 'general.retry': return 'Réessayer';
			case 'general.refresh': return 'Rafraîchir';
			case 'bottomBar.music': return 'Musique';
			case 'bottomBar.search': return 'Recherche';
			case 'bottomBar.playlists': return 'Playlists';
			case 'bottomBar.artists': return 'Artistes';
			case 'error.generic': return 'Une erreur s\'est produite';
			case 'error.fetchingSongs': return 'Erreur lors de la récupération des chansons.';
			case 'error.fetchingPlaylists': return 'Erreur lors de la récupération des playlists.';
			case 'error.creatingPlaylist': return 'Erreur lors de la création de la playlist.';
			case 'error.errorAddingSongToPlaylist': return 'Erreur lors de l\'ajout de la chanson à la playlist';
			case 'songList.delete': return 'Supprimer';
			case 'songList.rename': return 'Renommer';
			case 'songList.addToPlaylist': return 'Ajouter à la playlist';
			case 'songList.addedToPlaylist': return 'Ajouté à la playlist';
			case 'songList.removedFromPlaylist': return 'Retiré de la playlist';
			case 'songList.addToQueue': return 'Ajouter à la file d\'attente';
			case 'songList.addedToQueue': return 'Ajouté à la file d\'attente';
			case 'songList.alreadyInQueue': return 'Chanson déjà dans la file d\'attente';
			case 'player.unknownArtist': return 'Artiste inconnu';
			case 'player.permissionRequired': return 'Permission requise !';
			case 'player.pleaseEnableAppAccess': return 'Veuillez autoriser l\'accès de l\'application à la musique.';
			case 'player.allowAccess': return 'Autoriser l\'accès';
			case 'player.allowInSettings': return 'Si le bouton ne vous invite pas à autoriser l\'accès, veuillez l\'activer dans les paramètres de l\'application.';
			case 'player.noSongsAvailable': return 'Aucune chanson disponible.';
			case 'player.nowPlaying': return 'Lecture en cours';
			case 'player.nextInQueue': return 'Suivant dans la file d\'attente';
			case 'player.playingQueue': return 'File d\'attente de lecture';
			case 'player.nothingInQueue': return 'Rien dans la file d\'attente';
			case 'audioEffects.audioEffects': return 'Effets audio';
			case 'audioEffects.on': return 'Activé';
			case 'audioEffects.off': return 'Désactivé';
			case 'audioEffects.reverb': return 'Réverbération';
			case 'audioEffects.echo': return 'Écho';
			case 'audioEffects.speedAndPitch': return 'Vitesse + Pitch';
			case 'search.search': return 'Rechercher';
			case 'search.hint': return 'Rechercher votre musique...';
			case 'search.results': return ({required Object n}) => 'Résultats (${n})';
			case 'search.noSongs': return 'Aucune chanson.';
			case 'artists.artists': return ({required Object n}) => 'Artistes (${n})';
			case 'artists.noArtists': return 'Aucun artiste.';
			case 'artists.songsAndAlbums': return ({required Object tracks, required Object albums}) => '${tracks} morceaux, ${albums} albums';
			case 'playlists.playlists': return ({required Object n}) => 'Playlists (${n})';
			case 'playlists.tracks': return ({required Object n}) => 'Pistes (${n})';
			case 'playlists.newPlaylist': return 'Nouvelle playlist';
			case 'playlists.manageSongs': return 'gérer les chansons';
			case 'playlists.playlistName': return 'Nom de la playlist';
			case 'playlists.noPlaylists': return 'Aucune playlist.';
			case 'playlists.addToPlaylist': return 'Ajouter à la playlist';
			case 'playlists.removeFromPlaylist': return 'Retirer de la playlist';
			case 'playlists.rename': return 'Renommer la playlist';
			case 'playlists.playlistRenamed': return 'Playlist renommée';
			case 'playlists.deletePlaylist': return 'Supprimer la playlist';
			case 'playlists.areYouSure': return ({required Object name}) => 'Êtes-vous sûr de vouloir supprimer la playlist \'${name}\' ?';
			case 'playlists.playlistDeleted': return 'Playlist supprimée';
			case 'playlists.playlistCreated': return 'Playlist créée';
			case 'playlists.noSongsInPlaylist': return 'Playlist vide, ajoutez des chansons pour commencer.';
			case 'playlists.songAlreadyInPlaylist': return 'Chanson déjà dans la playlist';
			case 'settings.title': return 'Paramètres';
			case 'settings.language': return 'Langue';
			case 'settings.darkTheme': return 'Thème sombre';
			case 'settings.adjustAudio': return 'Ajuster les effets audio';
			default: return null;
		}
	}
}

