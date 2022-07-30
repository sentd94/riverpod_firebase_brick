import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/auth/domain/auth.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/auth/domain/src/firebase_auth.dart';

/// Provides methods to interact with Firebase Authentication.
final authProvider =
    Provider<Auth>((ref) => FirebaseAuthRepository()); // FirebaseAuthMock());  
