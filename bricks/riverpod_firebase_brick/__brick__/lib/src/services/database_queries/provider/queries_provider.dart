import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/database_queries/database_queries.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/database_queries/src/firestore_queries.dart';

final queriesProvider = Provider<DatabaseQueries>((ref) {
  return FirestoreQueries(ref: ref);
});
