import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      ['en', 'es', 'fr', 'pt'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) {
    Intl.defaultLocale = locale.languageCode;
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}

class AppLocalizations {
  AppLocalizations(this.locale);

  Locale locale;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  set localizedValues(Map<String, String> value) {
    _localizedValues = value;
  }

  Map<String, String> _localizedValues = {
    'checkInternetConnection': 'Check your internet connection.',
    'tryAgain': 'Try again',
  };

  String getLocalizedValue(String key) {
    return _localizedValues[key] ?? key;
  }



}
