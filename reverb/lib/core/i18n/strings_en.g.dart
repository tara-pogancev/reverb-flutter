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
	String get fetchingSongs => 'Error fetching songs.';
}

// Path: songList
class TranslationsSongListEn {
	TranslationsSongListEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get delete => 'Delete';
	String get rename => 'Rename';
	String get addToPlaylist => 'Add to Playlist';
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
			case 'error.fetchingSongs': return 'Error fetching songs.';
			case 'songList.delete': return 'Delete';
			case 'songList.rename': return 'Rename';
			case 'songList.addToPlaylist': return 'Add to Playlist';
			case 'player.unknownArtist': return 'Unknown artist';
			case 'player.permissionRequired': return 'Permission required!';
			case 'player.pleaseEnableAppAccess': return 'Please enable app\'s access to music.';
			case 'player.allowAccess': return 'Allow access';
			case 'player.allowInSettings': return 'If the button doesn\'t prompt you with allowing access, please enable it in the app\'s settings.';
			case 'player.noSongsAvailable': return 'No songs available.';
			case 'audioEffects.audioEffects': return 'Audio Effects';
			case 'audioEffects.on': return 'ON';
			case 'audioEffects.off': return 'OFF';
			case 'audioEffects.reverb': return 'Reverb';
			case 'audioEffects.echo': return 'Echo';
			case 'audioEffects.speedAndPitch': return 'Speed + Pitch';
			default: return null;
		}
	}
}

