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
class TranslationsEs implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEs _root = this; // ignore: unused_field

	@override 
	TranslationsEs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEs(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsGeneralEs general = _TranslationsGeneralEs._(_root);
	@override late final _TranslationsBottomBarEs bottomBar = _TranslationsBottomBarEs._(_root);
	@override late final _TranslationsErrorEs error = _TranslationsErrorEs._(_root);
	@override late final _TranslationsSongListEs songList = _TranslationsSongListEs._(_root);
	@override late final _TranslationsPlayerEs player = _TranslationsPlayerEs._(_root);
	@override late final _TranslationsAudioEffectsEs audioEffects = _TranslationsAudioEffectsEs._(_root);
	@override late final _TranslationsSearchEs search = _TranslationsSearchEs._(_root);
	@override late final _TranslationsArtistsEs artists = _TranslationsArtistsEs._(_root);
	@override late final _TranslationsPlaylistsEs playlists = _TranslationsPlaylistsEs._(_root);
	@override late final _TranslationsSettingsEs settings = _TranslationsSettingsEs._(_root);
}

// Path: general
class _TranslationsGeneralEs implements TranslationsGeneralEn {
	_TranslationsGeneralEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get appName => 'Reverb';
	@override String get cancel => 'Cancelar';
	@override String get ok => 'OK';
	@override String get confirm => 'Confirmar';
	@override String get save => 'Guardar';
	@override String get comingSoon => '¡Función disponible pronto! 🎉';
	@override String get viewAll => 'Ver todo';
	@override String get addNew => 'Añadir nuevo';
	@override String get createNew => 'Crear nuevo';
	@override String get upload => 'Subir';
	@override String get close => 'Cerrar';
	@override String get next => 'Siguiente';
	@override String get previous => 'Anterior';
	@override String get add => 'Añadir';
	@override String get remove => 'Eliminar';
	@override String get preview => 'Vista previa';
	@override String get retry => 'Reintentar';
	@override String get refresh => 'Actualizar';
}

// Path: bottomBar
class _TranslationsBottomBarEs implements TranslationsBottomBarEn {
	_TranslationsBottomBarEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get music => 'Música';
	@override String get search => 'Buscar';
	@override String get playlists => 'Listas de reproducción';
	@override String get artists => 'Artistas';
}

// Path: error
class _TranslationsErrorEs implements TranslationsErrorEn {
	_TranslationsErrorEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get generic => 'Ocurrió un error';
	@override String get fetchingSongs => 'Error al obtener canciones.';
	@override String get fetchingPlaylists => 'Error al obtener listas de reproducción.';
	@override String get creatingPlaylist => 'Error al crear la lista de reproducción.';
	@override String get errorAddingSongToPlaylist => 'Error al añadir la canción a la lista de reproducción.';
}

// Path: songList
class _TranslationsSongListEs implements TranslationsSongListEn {
	_TranslationsSongListEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get delete => 'Eliminar';
	@override String get rename => 'Renombrar';
	@override String get addToPlaylist => 'Añadir a la lista de reproducción';
	@override String get addedToPlaylist => 'Añadido a la lista de reproducción';
	@override String get removedFromPlaylist => 'Eliminado de la lista de reproducción';
	@override String get addToQueue => 'Añadir a la cola';
	@override String get addedToQueue => 'Añadido a la cola';
	@override String get alreadyInQueue => 'La canción ya está en la cola';
}

// Path: player
class _TranslationsPlayerEs implements TranslationsPlayerEn {
	_TranslationsPlayerEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get unknownArtist => 'Artista desconocido';
	@override String get permissionRequired => '¡Permiso requerido!';
	@override String get pleaseEnableAppAccess => 'Por favor, habilita el acceso de la app a la música.';
	@override String get allowAccess => 'Permitir acceso';
	@override String get allowInSettings => 'Si el botón no solicita permitir acceso, habilítalo en la configuración de la app.';
	@override String get noSongsAvailable => 'No hay canciones disponibles.';
	@override String get nowPlaying => 'Reproduciendo ahora';
	@override String get nextInQueue => 'Siguiente en la cola';
	@override String get playingQueue => 'Cola de reproducción';
	@override String get nothingInQueue => 'Nada en la cola';
}

// Path: audioEffects
class _TranslationsAudioEffectsEs implements TranslationsAudioEffectsEn {
	_TranslationsAudioEffectsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get audioEffects => 'Efectos de audio';
	@override String get on => 'ENCENDIDO';
	@override String get off => 'APAGADO';
	@override String get reverb => 'Reverberación';
	@override String get echo => 'Eco';
	@override String get speedAndPitch => 'Velocidad + Tono';
}

// Path: search
class _TranslationsSearchEs implements TranslationsSearchEn {
	_TranslationsSearchEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get search => 'Buscar';
	@override String get hint => 'Busca en tu música...';
	@override String results({required Object n}) => 'Resultados (${n})';
	@override String get noSongs => 'No hay canciones.';
}

// Path: artists
class _TranslationsArtistsEs implements TranslationsArtistsEn {
	_TranslationsArtistsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String artists({required Object n}) => 'Artistas (${n})';
	@override String get noArtists => 'No hay artistas.';
	@override String songsAndAlbums({required Object tracks, required Object albums}) => '${tracks} canciones, ${albums} álbumes';
}

// Path: playlists
class _TranslationsPlaylistsEs implements TranslationsPlaylistsEn {
	_TranslationsPlaylistsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String playlists({required Object n}) => 'Listas de reproducción (${n})';
	@override String tracks({required Object n}) => 'Canciones (${n})';
	@override String get newPlaylist => 'Nueva lista de reproducción';
	@override String get manageSongs => 'Gestionar canciones';
	@override String get playlistName => 'Nombre de la lista de reproducción';
	@override String get noPlaylists => 'No hay listas de reproducción.';
	@override String get addToPlaylist => 'Añadir a la lista de reproducción';
	@override String get removeFromPlaylist => 'Eliminar de la lista de reproducción';
	@override String get rename => 'Renombrar lista de reproducción';
	@override String get playlistRenamed => 'Lista de reproducción renombrada';
	@override String get deletePlaylist => 'Eliminar lista de reproducción';
	@override String areYouSure({required Object name}) => '¿Estás seguro de que deseas eliminar la lista de reproducción \'${name}\'?';
	@override String get playlistDeleted => 'Lista de reproducción eliminada';
	@override String get playlistCreated => 'Lista de reproducción creada';
	@override String get noSongsInPlaylist => 'Lista de reproducción vacía, añade algunas canciones para comenzar.';
	@override String get songAlreadyInPlaylist => 'La canción ya está en la lista de reproducción';
}

// Path: settings
class _TranslationsSettingsEs implements TranslationsSettingsEn {
	_TranslationsSettingsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Configuración';
	@override String get language => 'Idioma';
	@override String get darkTheme => 'Tema oscuro';
	@override String get adjustAudio => 'Ajustar efectos de audio';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'general.appName': return 'Reverb';
			case 'general.cancel': return 'Cancelar';
			case 'general.ok': return 'OK';
			case 'general.confirm': return 'Confirmar';
			case 'general.save': return 'Guardar';
			case 'general.comingSoon': return '¡Función disponible pronto! 🎉';
			case 'general.viewAll': return 'Ver todo';
			case 'general.addNew': return 'Añadir nuevo';
			case 'general.createNew': return 'Crear nuevo';
			case 'general.upload': return 'Subir';
			case 'general.close': return 'Cerrar';
			case 'general.next': return 'Siguiente';
			case 'general.previous': return 'Anterior';
			case 'general.add': return 'Añadir';
			case 'general.remove': return 'Eliminar';
			case 'general.preview': return 'Vista previa';
			case 'general.retry': return 'Reintentar';
			case 'general.refresh': return 'Actualizar';
			case 'bottomBar.music': return 'Música';
			case 'bottomBar.search': return 'Buscar';
			case 'bottomBar.playlists': return 'Listas de reproducción';
			case 'bottomBar.artists': return 'Artistas';
			case 'error.generic': return 'Ocurrió un error';
			case 'error.fetchingSongs': return 'Error al obtener canciones.';
			case 'error.fetchingPlaylists': return 'Error al obtener listas de reproducción.';
			case 'error.creatingPlaylist': return 'Error al crear la lista de reproducción.';
			case 'error.errorAddingSongToPlaylist': return 'Error al añadir la canción a la lista de reproducción.';
			case 'songList.delete': return 'Eliminar';
			case 'songList.rename': return 'Renombrar';
			case 'songList.addToPlaylist': return 'Añadir a la lista de reproducción';
			case 'songList.addedToPlaylist': return 'Añadido a la lista de reproducción';
			case 'songList.removedFromPlaylist': return 'Eliminado de la lista de reproducción';
			case 'songList.addToQueue': return 'Añadir a la cola';
			case 'songList.addedToQueue': return 'Añadido a la cola';
			case 'songList.alreadyInQueue': return 'La canción ya está en la cola';
			case 'player.unknownArtist': return 'Artista desconocido';
			case 'player.permissionRequired': return '¡Permiso requerido!';
			case 'player.pleaseEnableAppAccess': return 'Por favor, habilita el acceso de la app a la música.';
			case 'player.allowAccess': return 'Permitir acceso';
			case 'player.allowInSettings': return 'Si el botón no solicita permitir acceso, habilítalo en la configuración de la app.';
			case 'player.noSongsAvailable': return 'No hay canciones disponibles.';
			case 'player.nowPlaying': return 'Reproduciendo ahora';
			case 'player.nextInQueue': return 'Siguiente en la cola';
			case 'player.playingQueue': return 'Cola de reproducción';
			case 'player.nothingInQueue': return 'Nada en la cola';
			case 'audioEffects.audioEffects': return 'Efectos de audio';
			case 'audioEffects.on': return 'ENCENDIDO';
			case 'audioEffects.off': return 'APAGADO';
			case 'audioEffects.reverb': return 'Reverberación';
			case 'audioEffects.echo': return 'Eco';
			case 'audioEffects.speedAndPitch': return 'Velocidad + Tono';
			case 'search.search': return 'Buscar';
			case 'search.hint': return 'Busca en tu música...';
			case 'search.results': return ({required Object n}) => 'Resultados (${n})';
			case 'search.noSongs': return 'No hay canciones.';
			case 'artists.artists': return ({required Object n}) => 'Artistas (${n})';
			case 'artists.noArtists': return 'No hay artistas.';
			case 'artists.songsAndAlbums': return ({required Object tracks, required Object albums}) => '${tracks} canciones, ${albums} álbumes';
			case 'playlists.playlists': return ({required Object n}) => 'Listas de reproducción (${n})';
			case 'playlists.tracks': return ({required Object n}) => 'Canciones (${n})';
			case 'playlists.newPlaylist': return 'Nueva lista de reproducción';
			case 'playlists.manageSongs': return 'Gestionar canciones';
			case 'playlists.playlistName': return 'Nombre de la lista de reproducción';
			case 'playlists.noPlaylists': return 'No hay listas de reproducción.';
			case 'playlists.addToPlaylist': return 'Añadir a la lista de reproducción';
			case 'playlists.removeFromPlaylist': return 'Eliminar de la lista de reproducción';
			case 'playlists.rename': return 'Renombrar lista de reproducción';
			case 'playlists.playlistRenamed': return 'Lista de reproducción renombrada';
			case 'playlists.deletePlaylist': return 'Eliminar lista de reproducción';
			case 'playlists.areYouSure': return ({required Object name}) => '¿Estás seguro de que deseas eliminar la lista de reproducción \'${name}\'?';
			case 'playlists.playlistDeleted': return 'Lista de reproducción eliminada';
			case 'playlists.playlistCreated': return 'Lista de reproducción creada';
			case 'playlists.noSongsInPlaylist': return 'Lista de reproducción vacía, añade algunas canciones para comenzar.';
			case 'playlists.songAlreadyInPlaylist': return 'La canción ya está en la lista de reproducción';
			case 'settings.title': return 'Configuración';
			case 'settings.language': return 'Idioma';
			case 'settings.darkTheme': return 'Tema oscuro';
			case 'settings.adjustAudio': return 'Ajustar efectos de audio';
			default: return null;
		}
	}
}

