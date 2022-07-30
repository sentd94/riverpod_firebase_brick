import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/auth/models/database_user.dart';

final databaseUserNotifier =
    StateNotifierProvider<DatabaseUserNotifier, DatabaseUser?>(
        (ref) => DatabaseUserNotifier(ref: ref));

class DatabaseUserNotifier extends StateNotifier<DatabaseUser?> {
  final Ref ref;
  DatabaseUserNotifier({required this.ref}) : super(null);

  set databaseUser(DatabaseUser databaseUser) {
    state = databaseUser;
  }
}
