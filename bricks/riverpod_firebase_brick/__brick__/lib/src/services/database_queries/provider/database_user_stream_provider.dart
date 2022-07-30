import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/auth/models/database_user.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/auth/provider/auth_user_stream_provider.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/auth/provider/user_provider.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/database_queries/provider/queries_provider.dart';

///holds the stream to the database user document of the current signed in [user] (firebase auth)
final databaseUserStreamProvider =
    StreamProvider.autoDispose<DatabaseUser?>((ref) {
  //everytime the actual firebase auth user changes, and the uid is not null and new, we return the databaseUserStream matching the new user
  final user = ref.watch(authUserStreamProvider).value;
  if (user != null && user != ref.read(userProvider).user) {
    ref.read(userProvider).user = user;
    return ref.read(queriesProvider).getDatabaseUserStream(user.uid);
  } else {
    return Stream.value(null);
  }
});
