import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/settings/domain/settings_service.dart';

final settingsServiceProvider = Provider<SettingsService>((ref) {
  return SettingsService(ref: ref);
});
