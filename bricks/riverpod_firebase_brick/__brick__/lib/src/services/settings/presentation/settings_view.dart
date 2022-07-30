import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/settings/provider/settings_controller_provider.dart';

class SettingsView extends ConsumerWidget {
  const SettingsView({Key? key}) : super(key: key);
  static const routeName = '/settings';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Switch(
          value:
              ref.read(settingsControllerProvider).themeMode == ThemeMode.dark,
          onChanged: (value) {
            ref.read(settingsControllerProvider).switchThemeMode();
          },
        ),
      ),
    );
  }
}
