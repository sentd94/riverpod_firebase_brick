import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/firebase_options.dart';

import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/app.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/settings/provider/settings_controller_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //initialize FlutterFire
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  final container = ProviderContainer();
  await container.read(settingsControllerProvider).loadSettings();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(UncontrolledProviderScope(
      container: container,
      child:
          App(settingsController: container.read(settingsControllerProvider))));
}
