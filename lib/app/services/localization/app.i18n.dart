import 'package:i18n_extension/i18n_extension.dart';

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
  static final _t = Translations.from('en_us', {
    movieSearch: {
      'en_us': 'Movie search',
      'ru_RU': 'Поиск фильмов',
    },
    header: {
      'en_us': 'Header',
      'ru_RU': 'Заголовок',
    },
    findMoreMovie: {
      'en_us': 'FIND MORE MOVIE',
      'ru_RU': 'Найти больше фильмов',
    },
    search: {'en_us': 'Search', 'ru_RU': 'Поиск'}
  });

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(int value) => localizePlural(value, this, _t);
}
