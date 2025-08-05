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
class TranslationsHi implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsHi({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.hi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <hi>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsHi _root = this; // ignore: unused_field

	@override 
	TranslationsHi $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsHi(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsGeneralHi general = _TranslationsGeneralHi._(_root);
	@override late final _TranslationsBottomBarHi bottomBar = _TranslationsBottomBarHi._(_root);
	@override late final _TranslationsErrorHi error = _TranslationsErrorHi._(_root);
	@override late final _TranslationsSongListHi songList = _TranslationsSongListHi._(_root);
	@override late final _TranslationsPlayerHi player = _TranslationsPlayerHi._(_root);
	@override late final _TranslationsAudioEffectsHi audioEffects = _TranslationsAudioEffectsHi._(_root);
	@override late final _TranslationsSearchHi search = _TranslationsSearchHi._(_root);
	@override late final _TranslationsArtistsHi artists = _TranslationsArtistsHi._(_root);
	@override late final _TranslationsPlaylistsHi playlists = _TranslationsPlaylistsHi._(_root);
	@override late final _TranslationsSettingsHi settings = _TranslationsSettingsHi._(_root);
}

// Path: general
class _TranslationsGeneralHi implements TranslationsGeneralEn {
	_TranslationsGeneralHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get appName => 'Reverb';
	@override String get cancel => 'रद्द करें';
	@override String get ok => 'ठीक है';
	@override String get confirm => 'पुष्टि करें';
	@override String get save => 'सहेजें';
	@override String get comingSoon => 'फ़ीचर जल्द ही आ रहा है! 🎉';
	@override String get viewAll => 'सभी देखें';
	@override String get addNew => 'नया जोड़ें';
	@override String get createNew => 'नया बनाएं';
	@override String get upload => 'अपलोड करें';
	@override String get close => 'बंद करें';
	@override String get next => 'अगला';
	@override String get previous => 'पिछला';
	@override String get add => 'जोड़ें';
	@override String get remove => 'हटाएं';
	@override String get preview => 'पूर्वावलोकन';
	@override String get retry => 'पुनः प्रयास करें';
	@override String get refresh => 'ताज़ा करें';
}

// Path: bottomBar
class _TranslationsBottomBarHi implements TranslationsBottomBarEn {
	_TranslationsBottomBarHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get music => 'संगीत';
	@override String get search => 'खोजें';
	@override String get playlists => 'प्लेलिस्ट';
	@override String get artists => 'कलाकार';
}

// Path: error
class _TranslationsErrorHi implements TranslationsErrorEn {
	_TranslationsErrorHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get generic => 'एक त्रुटि हुई';
	@override String get fetchingSongs => 'गीतों को लाने में त्रुटि.';
	@override String get fetchingPlaylists => 'प्लेलिस्ट लाने में त्रुटि.';
	@override String get creatingPlaylist => 'प्लेलिस्ट बनाने में त्रुटि.';
	@override String get errorAddingSongToPlaylist => 'गीत को प्लेलिस्ट में जोड़ने में त्रुटि';
}

// Path: songList
class _TranslationsSongListHi implements TranslationsSongListEn {
	_TranslationsSongListHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get delete => 'मिटाएं';
	@override String get rename => 'नाम बदलें';
	@override String get addToPlaylist => 'प्लेलिस्ट में जोड़ें';
	@override String get addedToPlaylist => 'प्लेलिस्ट में जोड़ा गया';
	@override String get removedFromPlaylist => 'प्लेलिस्ट से हटाया गया';
	@override String get addToQueue => 'कतार में जोड़ें';
	@override String get addedToQueue => 'कतार में जोड़ा गया';
	@override String get alreadyInQueue => 'गीत पहले से ही कतार में है';
}

// Path: player
class _TranslationsPlayerHi implements TranslationsPlayerEn {
	_TranslationsPlayerHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get unknownArtist => 'अज्ञात कलाकार';
	@override String get permissionRequired => 'अनुमति आवश्यक है!';
	@override String get pleaseEnableAppAccess => 'कृपया संगीत तक ऐप की पहुंच सक्षम करें.';
	@override String get allowAccess => 'अनुमति दें';
	@override String get allowInSettings => 'यदि बटन आपको पहुंच देने के लिए संकेत नहीं देता है, तो कृपया इसे ऐप की सेटिंग में सक्षम करें।';
	@override String get noSongsAvailable => 'कोई गीत उपलब्ध नहीं है।';
	@override String get nowPlaying => 'अभी चल रहा है';
	@override String get nextInQueue => 'कतार में अगला';
	@override String get playingQueue => 'प्लेइंग क्यू';
	@override String get nothingInQueue => 'कतार में कुछ नहीं';
}

// Path: audioEffects
class _TranslationsAudioEffectsHi implements TranslationsAudioEffectsEn {
	_TranslationsAudioEffectsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get audioEffects => 'ऑडियो प्रभाव';
	@override String get on => 'चालू';
	@override String get off => 'बंद';
	@override String get reverb => 'प्रतिध्वनि';
	@override String get echo => 'गूंज';
	@override String get speedAndPitch => 'गति + पिच';
}

// Path: search
class _TranslationsSearchHi implements TranslationsSearchEn {
	_TranslationsSearchHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get search => 'खोजें';
	@override String get hint => 'अपना संगीत खोजें...';
	@override String results({required Object n}) => 'परिणाम (${n})';
	@override String get noSongs => 'कोई गीत नहीं।';
}

// Path: artists
class _TranslationsArtistsHi implements TranslationsArtistsEn {
	_TranslationsArtistsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String artists({required Object n}) => 'कलाकार (${n})';
	@override String get noArtists => 'कोई कलाकार नहीं।';
	@override String songsAndAlbums({required Object tracks, required Object albums}) => '${tracks} ट्रैक, ${albums} एल्बम';
}

// Path: playlists
class _TranslationsPlaylistsHi implements TranslationsPlaylistsEn {
	_TranslationsPlaylistsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String playlists({required Object n}) => 'प्लेलिस्ट (${n})';
	@override String tracks({required Object n}) => 'ट्रैक (${n})';
	@override String get newPlaylist => 'नई प्लेलिस्ट';
	@override String get manageSongs => 'गाने प्रबंधित करें';
	@override String get playlistName => 'प्लेलिस्ट का नाम';
	@override String get noPlaylists => 'कोई प्लेलिस्ट नहीं।';
	@override String get addToPlaylist => 'प्लेलिस्ट में जोड़ें';
	@override String get removeFromPlaylist => 'प्लेलिस्ट से हटाएं';
	@override String get rename => 'नाम बदलें';
	@override String get playlistRenamed => 'प्लेलिस्ट का नाम बदल दिया गया';
	@override String get deletePlaylist => 'प्लेलिस्ट हटाएं';
	@override String areYouSure({required Object name}) => 'क्या आप श्योर हैं कि आप \'${name}\' प्लेलिस्ट को हटाना चाहते हैं?';
	@override String get playlistDeleted => 'प्लेलिस्ट हटाई गई';
	@override String get playlistCreated => 'प्लेलिस्ट बनाई गई';
	@override String get noSongsInPlaylist => 'खाली प्लेलिस्ट, शुरू करने के लिए कुछ गाने जोड़ें।';
	@override String get songAlreadyInPlaylist => 'गीत पहले से ही प्लेलिस्ट में है';
}

// Path: settings
class _TranslationsSettingsHi implements TranslationsSettingsEn {
	_TranslationsSettingsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'सेटिंग्स';
	@override String get language => 'भाषा';
	@override String get darkTheme => 'डार्क थीम';
	@override String get adjustAudio => 'ऑडियो प्रभाव समायोजित करें';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsHi {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'general.appName': return 'Reverb';
			case 'general.cancel': return 'रद्द करें';
			case 'general.ok': return 'ठीक है';
			case 'general.confirm': return 'पुष्टि करें';
			case 'general.save': return 'सहेजें';
			case 'general.comingSoon': return 'फ़ीचर जल्द ही आ रहा है! 🎉';
			case 'general.viewAll': return 'सभी देखें';
			case 'general.addNew': return 'नया जोड़ें';
			case 'general.createNew': return 'नया बनाएं';
			case 'general.upload': return 'अपलोड करें';
			case 'general.close': return 'बंद करें';
			case 'general.next': return 'अगला';
			case 'general.previous': return 'पिछला';
			case 'general.add': return 'जोड़ें';
			case 'general.remove': return 'हटाएं';
			case 'general.preview': return 'पूर्वावलोकन';
			case 'general.retry': return 'पुनः प्रयास करें';
			case 'general.refresh': return 'ताज़ा करें';
			case 'bottomBar.music': return 'संगीत';
			case 'bottomBar.search': return 'खोजें';
			case 'bottomBar.playlists': return 'प्लेलिस्ट';
			case 'bottomBar.artists': return 'कलाकार';
			case 'error.generic': return 'एक त्रुटि हुई';
			case 'error.fetchingSongs': return 'गीतों को लाने में त्रुटि.';
			case 'error.fetchingPlaylists': return 'प्लेलिस्ट लाने में त्रुटि.';
			case 'error.creatingPlaylist': return 'प्लेलिस्ट बनाने में त्रुटि.';
			case 'error.errorAddingSongToPlaylist': return 'गीत को प्लेलिस्ट में जोड़ने में त्रुटि';
			case 'songList.delete': return 'मिटाएं';
			case 'songList.rename': return 'नाम बदलें';
			case 'songList.addToPlaylist': return 'प्लेलिस्ट में जोड़ें';
			case 'songList.addedToPlaylist': return 'प्लेलिस्ट में जोड़ा गया';
			case 'songList.removedFromPlaylist': return 'प्लेलिस्ट से हटाया गया';
			case 'songList.addToQueue': return 'कतार में जोड़ें';
			case 'songList.addedToQueue': return 'कतार में जोड़ा गया';
			case 'songList.alreadyInQueue': return 'गीत पहले से ही कतार में है';
			case 'player.unknownArtist': return 'अज्ञात कलाकार';
			case 'player.permissionRequired': return 'अनुमति आवश्यक है!';
			case 'player.pleaseEnableAppAccess': return 'कृपया संगीत तक ऐप की पहुंच सक्षम करें.';
			case 'player.allowAccess': return 'अनुमति दें';
			case 'player.allowInSettings': return 'यदि बटन आपको पहुंच देने के लिए संकेत नहीं देता है, तो कृपया इसे ऐप की सेटिंग में सक्षम करें।';
			case 'player.noSongsAvailable': return 'कोई गीत उपलब्ध नहीं है।';
			case 'player.nowPlaying': return 'अभी चल रहा है';
			case 'player.nextInQueue': return 'कतार में अगला';
			case 'player.playingQueue': return 'प्लेइंग क्यू';
			case 'player.nothingInQueue': return 'कतार में कुछ नहीं';
			case 'audioEffects.audioEffects': return 'ऑडियो प्रभाव';
			case 'audioEffects.on': return 'चालू';
			case 'audioEffects.off': return 'बंद';
			case 'audioEffects.reverb': return 'प्रतिध्वनि';
			case 'audioEffects.echo': return 'गूंज';
			case 'audioEffects.speedAndPitch': return 'गति + पिच';
			case 'search.search': return 'खोजें';
			case 'search.hint': return 'अपना संगीत खोजें...';
			case 'search.results': return ({required Object n}) => 'परिणाम (${n})';
			case 'search.noSongs': return 'कोई गीत नहीं।';
			case 'artists.artists': return ({required Object n}) => 'कलाकार (${n})';
			case 'artists.noArtists': return 'कोई कलाकार नहीं।';
			case 'artists.songsAndAlbums': return ({required Object tracks, required Object albums}) => '${tracks} ट्रैक, ${albums} एल्बम';
			case 'playlists.playlists': return ({required Object n}) => 'प्लेलिस्ट (${n})';
			case 'playlists.tracks': return ({required Object n}) => 'ट्रैक (${n})';
			case 'playlists.newPlaylist': return 'नई प्लेलिस्ट';
			case 'playlists.manageSongs': return 'गाने प्रबंधित करें';
			case 'playlists.playlistName': return 'प्लेलिस्ट का नाम';
			case 'playlists.noPlaylists': return 'कोई प्लेलिस्ट नहीं।';
			case 'playlists.addToPlaylist': return 'प्लेलिस्ट में जोड़ें';
			case 'playlists.removeFromPlaylist': return 'प्लेलिस्ट से हटाएं';
			case 'playlists.rename': return 'नाम बदलें';
			case 'playlists.playlistRenamed': return 'प्लेलिस्ट का नाम बदल दिया गया';
			case 'playlists.deletePlaylist': return 'प्लेलिस्ट हटाएं';
			case 'playlists.areYouSure': return ({required Object name}) => 'क्या आप श्योर हैं कि आप \'${name}\' प्लेलिस्ट को हटाना चाहते हैं?';
			case 'playlists.playlistDeleted': return 'प्लेलिस्ट हटाई गई';
			case 'playlists.playlistCreated': return 'प्लेलिस्ट बनाई गई';
			case 'playlists.noSongsInPlaylist': return 'खाली प्लेलिस्ट, शुरू करने के लिए कुछ गाने जोड़ें।';
			case 'playlists.songAlreadyInPlaylist': return 'गीत पहले से ही प्लेलिस्ट में है';
			case 'settings.title': return 'सेटिंग्स';
			case 'settings.language': return 'भाषा';
			case 'settings.darkTheme': return 'डार्क थीम';
			case 'settings.adjustAudio': return 'ऑडियो प्रभाव समायोजित करें';
			default: return null;
		}
	}
}

