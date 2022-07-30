import 'package:firebase_auth/firebase_auth.dart';

abstract class Auth {
  const Auth();

  Stream<User?> get user;

  Future<void> logOut();

  Future<void> signUpWithGoogle();

  Future<void> signUpWithTwitter();

  Future<void> signUpWithFacebook();

  Future<void> signUpWithApple();
}
