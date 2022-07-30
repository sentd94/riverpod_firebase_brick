import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/auth/models/database_user.dart';

abstract class DatabaseQueries {
  const DatabaseQueries();
  Stream<DatabaseUser?> getDatabaseUserStream(String uid);

  // Stream<List<VoucherInstance>> getVoucherInstances(String uid);

}
