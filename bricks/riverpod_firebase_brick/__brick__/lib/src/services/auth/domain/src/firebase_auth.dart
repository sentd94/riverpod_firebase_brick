import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/config/values.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/auth/domain/auth.dart';

class FirebaseAuthRepository implements Auth {
  FirebaseAuthRepository() {
    if (useEmulators) {
      _firebaseAuth.useAuthEmulator(
          emulatorsLocalhostAddress, emulatorsAuthenticationPort);
    }
  }
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  /// Stream of [User] which will emit the current user when
  /// the authentication state changes.
  @override
  Stream<User?> get user {
    return _firebaseAuth.authStateChanges();
  }

  // /// Signs in / up with the provided [credential] (from Twitter / Facebook / Google).
  // Future<void> _signInWithCredential(AuthCredential credential) async {
  //   try {
  //     await Future.wait([
  //       _firebaseAuth.signInWithCredential(credential),
  //     ]);
  //   } on Exception {
  //     rethrow;
  //   }
  // }

  /// Signs out the current user which will emit
  /// [User.empty] from the [user] Stream.
  @override
  Future<void> logOut() async {
    try {
      await _firebaseAuth.signOut();
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<void> signUpWithGoogle() async {
    // final googleSignIn = GoogleSignIn(scopes: ['email']);
    // final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    // if (googleUser == null) {
    //   throw Exception("Could not sign in google user");
    // }
    // final GoogleSignInAuthentication googleAuth =
    //     await googleUser.authentication;
    // final AuthCredential credential = GoogleAuthProvider.credential(
    //   idToken: googleAuth.idToken,
    //   accessToken: googleAuth.accessToken,
    // );
    // return _signInWithCredential(credential);
  }

  @override
  Future<void> signUpWithTwitter() async {
    // final twitterSignIn = TwitterLogin(
    //     apiKey: twitterAPIKey,
    //     apiSecretKey: twitterAPISecret,
    //     redirectURI: twitterAuthRedirectUrl);
    // final authResult = await twitterSignIn.login();
    // if (authResult.status != TwitterLoginStatus.loggedIn) {
    //   throw Exception("twitter login error");
    // }
    // if (authResult.authToken == null || authResult.authTokenSecret == null) {
    //   throw Exception("twitter login error");
    // }
    // final AuthCredential credential = TwitterAuthProvider.credential(
    //     accessToken: authResult.authToken!,
    //     secret: authResult.authTokenSecret!);

    // return _signInWithCredential(credential);
  }

  @override
  Future<void> signUpWithApple() {
    throw UnimplementedError();
  }

  @override
  Future<void> signUpWithFacebook() async {
    // final facebookAuth = FacebookAuth.instance;

    // final result = await facebookAuth.login();
    // switch (result.status) {
    //   case LoginStatus.success:
    //     if (result.accessToken == null) {
    //       throw Exception("Could not sign in facebook user");
    //     }
    //     final AuthCredential credential =
    //         FacebookAuthProvider.credential(result.accessToken!.token);
    //     //Firebase Sign in
    //     return _signInWithCredential(credential);
    //   case LoginStatus.cancelled:
    //     debugPrint("Canceled by user");
    //     break;
    //   case LoginStatus.failed:
    //     throw Exception("Could not sign in facebook user");
    //   case LoginStatus.operationInProgress:
    //     break;
    // }
  }
}
