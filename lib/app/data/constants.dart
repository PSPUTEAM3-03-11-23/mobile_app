// ignore_for_file: constant_identifier_names

import 'package:hackathon4/app/data/models/language_models/language_models.dart';

abstract class Constants {
  static const SUCCESS = 'success';
  static const VERSION = '1.0.6';
  static const BASE_URL = 'http://51.250.31.115:3000/api/';
  static const IMAGES_PATH = 'assets/img';
  static const LANGUAGE_PATH = 'assets/locales';

  static const String COUNTRY_CODE = 'country_code';
  static const String LANGUAGE_CODE = 'language_code';

  static List<LanguageModel> languages = [
    LanguageModel(
      imageUrl: "🇺🇸",
      languageName: 'English',
      countryCode: 'US',
      languageCode: 'en',
    ),
    LanguageModel(
      imageUrl: "🇷🇺",
      languageName: 'Russian',
      countryCode: 'RU',
      languageCode: 'ru',
    ),
    LanguageModel(
      imageUrl: "🇨🇳",
      languageName: 'China',
      countryCode: 'CN',
      languageCode: 'zh',
    ),
  ];
}

abstract class HttpHeaders {
  static const AccessToken = 'x-access-token';
  static const RefreshToken = 'x-refresh-token';
}

class AppConstants {}

enum HttpMethod {
  GET,
  POST,
  DELETE,
  PUT,
}

enum DataStatus {
  init,
  loading,
  success,
  error,
}
