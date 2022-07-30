import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/auth/models/database_user.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/database_queries/provider/database_user_notifier.dart';

///provides the latest [User] object provided by Firebase auth
///
///also offers methods [_checkForDisplayNameMisMatch] and [_startListenToScannableInstances] for after the
final userProvider =
    Provider<UserRepository>((ref) => UserRepository(ref: ref));

class UserRepository {
  final Ref ref;
  UserRepository({required this.ref});
  User? user;

  void _setDatabaseUserInProvider(DatabaseUser databaseUser) {
    ref.read(databaseUserNotifier.notifier).databaseUser = databaseUser;
  }

  ///1. checks if databaseUser displayName and user displayName mismatch and if so updates it
  void init(DatabaseUser databaseUser) {
    _setDatabaseUserInProvider(databaseUser);
  }
}
