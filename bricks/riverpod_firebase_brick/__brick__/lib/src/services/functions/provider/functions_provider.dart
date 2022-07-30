import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/functions/domain/functions.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/functions/domain/src/cloud_functions.dart';

/// Provides methods to execute Cloud Functions.
final functionsProvider = Provider<Functions>((ref) {
  return CloudFunctions();
});
