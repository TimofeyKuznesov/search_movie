import 'package:i18n_extension/i18n_extension.dart';
import 'package:i18n_extension/io/import.dart';

const movieSearch = 'Movie search';
const header = 'Header';
const findMoreMovie = 'FIND MORE MOVIE';
const search = 'Search';

extension AppI18n on String {
  //
  /// If you want to use identifiers as translation keys, you can define the
  /// keys here in the translations file, and then use the [Translations.from]
  /// constructor:
  ///
  static TranslationsByLocale translations = Translations.byLocale("ru");

  // static Future<void> loadTranslations() async {
  //   translations += await JSONImporter().fromAssetDirectory("locales");
  // }
  static Future<void> loadTranslations() {
    return JSONImporter()
        .fromAssetDirectory("locales")
        .then((value) => {
              translations += value,
            })
        .catchError((error) => print(error));
  }

  String get i18n => localize(this, translations);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(int value) => localizePlural(value, this, translations);
}
