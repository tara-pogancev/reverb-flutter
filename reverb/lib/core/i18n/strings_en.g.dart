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
	late final TranslationsErrorEn error = TranslationsErrorEn._(_root);
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

// Path: error
class TranslationsErrorEn {
	TranslationsErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get fetchingSongs => 'Error fetching songs.';
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
			case 'error.fetchingSongs': return 'Error fetching songs.';
			default: return null;
		}
	}
}

