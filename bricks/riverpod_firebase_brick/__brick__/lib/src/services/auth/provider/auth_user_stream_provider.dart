import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/auth/provider/auth_provider.dart';

final authUserStreamProvider = StreamProvider<User?>((ref) {
  return ref.watch(authProvider).user;
});
