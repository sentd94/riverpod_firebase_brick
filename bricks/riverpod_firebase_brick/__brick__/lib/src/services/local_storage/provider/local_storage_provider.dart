import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/local_storage/domain/src/data_storage.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/local_storage/domain/storage_operation.dart';

final localStorageProvider = Provider<StorageOperations>((ref) {
  return DataStorage(ref: ref);
});
