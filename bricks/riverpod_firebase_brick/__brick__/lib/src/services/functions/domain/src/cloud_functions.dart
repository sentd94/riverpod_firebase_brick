import 'package:cloud_functions/cloud_functions.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/config/values.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/functions/domain/functions.dart';

class CloudFunctions implements Functions {
  final _functions = FirebaseFunctions.instanceFor(region: 'europe-west3');

  CloudFunctions() {
    if (useEmulators) {
      _functions.useFunctionsEmulator(
          emulatorsLocalhostAddress, emulatorsFunctionsPort);
    }
  }

  @override
  Future<HttpsCallableResult> attend({required String eventId}) {
    final HttpsCallable callable = _functions.httpsCallable('attendEvent',
        options: HttpsCallableOptions());

    return callable({
      'eventId': eventId,
    });
  }
}
