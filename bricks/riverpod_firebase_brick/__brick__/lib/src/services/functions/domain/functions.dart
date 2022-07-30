import 'package:cloud_functions/cloud_functions.dart';

abstract class Functions {
  Future<HttpsCallableResult<dynamic>> attend({required String eventId});
}
