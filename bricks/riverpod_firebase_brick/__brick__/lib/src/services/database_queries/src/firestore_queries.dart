import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/config/values.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/auth/models/database_user.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/database_queries/database_queries.dart';

class FirestoreQueries implements DatabaseQueries {
  final Ref ref;
  final _firestore = FirebaseFirestore.instance;
  FirestoreQueries({required this.ref}) {
    if (useEmulators) {
      _firestore.settings = const Settings(persistenceEnabled: false);
      _firestore.useFirestoreEmulator(
          emulatorsLocalhostAddress, emulatorsFirestorePort);
    }
  }

  @override
  Stream<DatabaseUser?> getDatabaseUserStream(String uid) {
    return _firestore.collection("users").doc(uid).snapshots().map((snap) {
      DatabaseUser? user;
      if (!snap.exists) {
        return null;
      }
      user = DatabaseUser.fromDocumentSnapshot(snap);

      return user;
    });
  }
  // @override
  // Stream<List<String>> getAttendingEventIds(String uid) {
  //   final attendingEventsStream = _firestore
  //       .collection("users")
  //       .doc(uid)
  //       .collection("attending")
  //       .where("endDate", isGreaterThan: DateTime.now())
  //       .snapshots()
  //       .map((events) =>
  //           events.docs.map((e) => e.data()["id"] as String).toList());
  //   return attendingEventsStream;
  // }

}
