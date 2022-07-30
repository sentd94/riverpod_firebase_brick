import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/config/values.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/local_storage/provider/local_storage_provider.dart';

/// A service that stores and retrieves user settings.
///
/// By default, this class does not persist user settings. If you'd like to
/// persist the user settings locally, use the shared_preferences package. If
/// you'd like to store settings on a web server, use the http package.
class SettingsService {
  final Ref ref;
  const SettingsService({required this.ref});

  /// Loads the User's preferred ThemeMode from local
  Future<ThemeMode> themeMode() async {
    final themeMode = await ref.read(localStorageProvider).retrieveThemeMode();

    switch (themeMode) {
      case "ThemeMode.light":
        return ThemeMode.light;
      case "ThemeMode.dark":
        return ThemeMode.dark;
      case null:
      default:
        return defaultThemeMode;
    }
  }

  /// Persists the user's preferred ThemeMode to local or remote storage.
  Future<void> updateThemeMode(ThemeMode theme) async {
    // Use the shared_preferences package to persist settings locally or the
    ref.read(localStorageProvider).storeThemeMode(theme.toString());
  }
}
