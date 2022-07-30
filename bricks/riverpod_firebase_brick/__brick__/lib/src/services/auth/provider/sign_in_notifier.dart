import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/auth/provider/auth_provider.dart';

final signInAsyncNotifier =
    StateNotifierProvider<SignInAsyncNotifier, AsyncValue<bool>>(
        (ref) => SignInAsyncNotifier(ref: ref));

class SignInAsyncNotifier extends StateNotifier<AsyncValue<bool>> {
  final Ref ref;
  SignInAsyncNotifier({required this.ref})
      : super(const AsyncValue.data(false));

  void signUpWithGoogle() async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      await ref.read(authProvider).signUpWithGoogle();
      return true;
    });
  }

  void signUpWithFacebook() async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      await ref.read(authProvider).signUpWithFacebook();
      return true;
    });
  }

  void signUpWithApple() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref.read(authProvider).signUpWithApple();
      return true;
    });
  }

  void signUpWithTwitter() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref.read(authProvider).signUpWithTwitter();
      return true;
    });
  }

  void logOut() {
    ref.read(authProvider).logOut();
    state = const AsyncData(false);
  }
}
