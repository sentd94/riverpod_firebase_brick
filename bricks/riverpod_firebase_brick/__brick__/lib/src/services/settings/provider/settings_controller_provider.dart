import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/settings/domain/settings_controller.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/settings/provider/settings_service_provider.dart';

final settingsControllerProvider = Provider<SettingsController>((ref) {
  return SettingsController(ref.read(settingsServiceProvider));
});
