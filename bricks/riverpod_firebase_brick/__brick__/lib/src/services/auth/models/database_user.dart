import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'database_user.freezed.dart';

@freezed
abstract class DatabaseUser with _$DatabaseUser {
  const factory DatabaseUser({
    required String uid,
    required String email,
    required String displayName,
    required String photoURL,
    required int shortUid,
    required List<String> admin,
    required List<String> mod,
    required List<String> scanner,
  }) = _DatabaseUser;
  const DatabaseUser._();
  factory DatabaseUser.fromDocumentSnapshot(
      DocumentSnapshot<Map<String, dynamic>> documentSnapshot) {
    final adminList = documentSnapshot.data()?["admin"] as List;
    final modList = documentSnapshot.data()?["mod"] as List;
    final scannerList = documentSnapshot.data()?["scanner"] as List;

    return DatabaseUser(
      uid: documentSnapshot.data()?["uid"] as String,
      email: documentSnapshot.data()?["email"] as String,
      displayName: documentSnapshot.data()?["displayName"] as String,
      photoURL: documentSnapshot.data()?["photoURL"] as String,
      shortUid: documentSnapshot.data()?["shortUid"] as int,
      admin: adminList.map((item) => item as String).toList(),
      mod: modList.map((item) => item as String).toList(),
      scanner: scannerList.map((item) => item as String).toList(),
    );
  }

  bool isAdmin(String hostId) => admin.contains(hostId);
  bool isMod(String hostId) => mod.contains(hostId);
  bool isScanner(String hostId) => scanner.contains(hostId);

  List<String> get allHostIds => [...admin, ...mod, ...scanner];

  ///returns [true] if user is admin/mod/scanner, [false] otherwise
  bool get canScan => allHostIds.isNotEmpty;

  HostRole? getHostRole(String hostId) {
    if (admin.contains(hostId)) {
      return HostRole.admin;
    } else if (mod.contains(hostId)) {
      return HostRole.mod;
    } else if (scanner.contains(hostId)) {
      return HostRole.scanner;
    } else {
      return null;
    }
  }
}

enum HostRole { scanner, mod, admin }
