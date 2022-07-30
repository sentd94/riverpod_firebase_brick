import 'package:firebase_auth/firebase_auth.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/auth/domain/auth.dart';

class FirebaseAuthMock implements Auth {
  @override
  Future<void> logOut() async {
    try {
      _firebaseAuth.signOut();
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<void> signUpWithGoogle() {
    return _signUpWithGoogleError();
  }

  // ignore: unused_element
  Future<void> _signUpWithGoogleError() {
    return Future.delayed(const Duration(seconds: 3),
        () => throw Exception("Can't sign in with google"));
  }

  // ignore: unused_element
  Future<void> _signUpWithGoogleSuccess() {
    return Future.delayed(
      const Duration(seconds: 3),
    );
  }

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Stream<User?> get user => _firebaseAuth.authStateChanges();

  @override
  Future<void> signUpWithApple() {
    return Future.delayed(
      const Duration(seconds: 3),
    );
  }

  @override
  Future<void> signUpWithFacebook() {
    return Future.delayed(
      const Duration(seconds: 3),
    );
  }

  @override
  Future<void> signUpWithTwitter() {
    return Future.delayed(
      const Duration(seconds: 3),
    );
  }
}
