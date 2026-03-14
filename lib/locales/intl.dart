import 'dart:convert';
import 'dart:ui';

import 'package:flutter/services.dart';

/// Simple runtime localization helper.
///
/// Usage:
/// ```dart
/// await Intl.load(const Locale('en'));
/// final loginText = Intl.text('common.login');
/// ```
///
/// This is not a full i18n solution, but it provides a lightweight
/// mechanism to keep string keys in one place and swap languages later.
class Intl {
  Intl._();

  static Locale _locale = const Locale('en');
  static Map<String, String> _values = const {};

  /// Loads locale data from an asset file.
  ///
  /// Expects `assets/locales/<languageCode>.json` to exist.
  static Future<void> load(Locale locale) async {
    _locale = locale;

    final assetPath = 'assets/locales/${locale.languageCode}.json';
    try {
      final jsonString = await rootBundle.loadString(assetPath);
      final decoded = json.decode(jsonString) as Map<String, dynamic>;
      _values = decoded.map((key, value) => MapEntry(key, value.toString()));
    } catch (_) {
      // If the requested locale file is missing, fall back to empty map.
      _values = const {};
    }
  }

  /// Overrides or adds a locale value at runtime.
  ///
  /// Useful for toggling dynamic flags (e.g., login state) without needing
  /// to reload locale bundles.
  static void setValue(String key, String value) {
    _values = Map.of(_values);
    _values[key] = value;
  }

  /// Gets the current locale.
  static Locale get locale => _locale;

  /// Looks up a localized string by key.
  ///
  /// If no translation is found, the key is returned as a fallback.
  static String text(String key) {
    return _values[key] ?? key;
  }
}
