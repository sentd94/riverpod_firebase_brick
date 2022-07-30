// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'database_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DatabaseUserTearOff {
  const _$DatabaseUserTearOff();

  _DatabaseUser call(
      {required String uid,
      required String email,
      required String displayName,
      required String photoURL,
      required int shortUid,
      required List<String> admin,
      required List<String> mod,
      required List<String> scanner}) {
    return _DatabaseUser(
      uid: uid,
      email: email,
      displayName: displayName,
      photoURL: photoURL,
      shortUid: shortUid,
      admin: admin,
      mod: mod,
      scanner: scanner,
    );
  }
}

/// @nodoc
const $DatabaseUser = _$DatabaseUserTearOff();

/// @nodoc
mixin _$DatabaseUser {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get photoURL => throw _privateConstructorUsedError;
  int get shortUid => throw _privateConstructorUsedError;
  List<String> get admin => throw _privateConstructorUsedError;
  List<String> get mod => throw _privateConstructorUsedError;
  List<String> get scanner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DatabaseUserCopyWith<DatabaseUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseUserCopyWith<$Res> {
  factory $DatabaseUserCopyWith(
          DatabaseUser value, $Res Function(DatabaseUser) then) =
      _$DatabaseUserCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      String email,
      String displayName,
      String photoURL,
      int shortUid,
      List<String> admin,
      List<String> mod,
      List<String> scanner});
}

/// @nodoc
class _$DatabaseUserCopyWithImpl<$Res> implements $DatabaseUserCopyWith<$Res> {
  _$DatabaseUserCopyWithImpl(this._value, this._then);

  final DatabaseUser _value;
  // ignore: unused_field
  final $Res Function(DatabaseUser) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? displayName = freezed,
    Object? photoURL = freezed,
    Object? shortUid = freezed,
    Object? admin = freezed,
    Object? mod = freezed,
    Object? scanner = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String,
      shortUid: shortUid == freezed
          ? _value.shortUid
          : shortUid // ignore: cast_nullable_to_non_nullable
              as int,
      admin: admin == freezed
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mod: mod == freezed
          ? _value.mod
          : mod // ignore: cast_nullable_to_non_nullable
              as List<String>,
      scanner: scanner == freezed
          ? _value.scanner
          : scanner // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$DatabaseUserCopyWith<$Res>
    implements $DatabaseUserCopyWith<$Res> {
  factory _$DatabaseUserCopyWith(
          _DatabaseUser value, $Res Function(_DatabaseUser) then) =
      __$DatabaseUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String email,
      String displayName,
      String photoURL,
      int shortUid,
      List<String> admin,
      List<String> mod,
      List<String> scanner});
}

/// @nodoc
class __$DatabaseUserCopyWithImpl<$Res> extends _$DatabaseUserCopyWithImpl<$Res>
    implements _$DatabaseUserCopyWith<$Res> {
  __$DatabaseUserCopyWithImpl(
      _DatabaseUser _value, $Res Function(_DatabaseUser) _then)
      : super(_value, (v) => _then(v as _DatabaseUser));

  @override
  _DatabaseUser get _value => super._value as _DatabaseUser;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? displayName = freezed,
    Object? photoURL = freezed,
    Object? shortUid = freezed,
    Object? admin = freezed,
    Object? mod = freezed,
    Object? scanner = freezed,
  }) {
    return _then(_DatabaseUser(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String,
      shortUid: shortUid == freezed
          ? _value.shortUid
          : shortUid // ignore: cast_nullable_to_non_nullable
              as int,
      admin: admin == freezed
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mod: mod == freezed
          ? _value.mod
          : mod // ignore: cast_nullable_to_non_nullable
              as List<String>,
      scanner: scanner == freezed
          ? _value.scanner
          : scanner // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_DatabaseUser extends _DatabaseUser {
  const _$_DatabaseUser(
      {required this.uid,
      required this.email,
      required this.displayName,
      required this.photoURL,
      required this.shortUid,
      required this.admin,
      required this.mod,
      required this.scanner})
      : super._();

  @override
  final String uid;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String photoURL;
  @override
  final int shortUid;
  @override
  final List<String> admin;
  @override
  final List<String> mod;
  @override
  final List<String> scanner;

  @override
  String toString() {
    return 'DatabaseUser(uid: $uid, email: $email, displayName: $displayName, photoURL: $photoURL, shortUid: $shortUid, admin: $admin, mod: $mod, scanner: $scanner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DatabaseUser &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality().equals(other.photoURL, photoURL) &&
            const DeepCollectionEquality().equals(other.shortUid, shortUid) &&
            const DeepCollectionEquality().equals(other.admin, admin) &&
            const DeepCollectionEquality().equals(other.mod, mod) &&
            const DeepCollectionEquality().equals(other.scanner, scanner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(photoURL),
      const DeepCollectionEquality().hash(shortUid),
      const DeepCollectionEquality().hash(admin),
      const DeepCollectionEquality().hash(mod),
      const DeepCollectionEquality().hash(scanner));

  @JsonKey(ignore: true)
  @override
  _$DatabaseUserCopyWith<_DatabaseUser> get copyWith =>
      __$DatabaseUserCopyWithImpl<_DatabaseUser>(this, _$identity);
}

abstract class _DatabaseUser extends DatabaseUser {
  const factory _DatabaseUser(
      {required String uid,
      required String email,
      required String displayName,
      required String photoURL,
      required int shortUid,
      required List<String> admin,
      required List<String> mod,
      required List<String> scanner}) = _$_DatabaseUser;
  const _DatabaseUser._() : super._();

  @override
  String get uid;
  @override
  String get email;
  @override
  String get displayName;
  @override
  String get photoURL;
  @override
  int get shortUid;
  @override
  List<String> get admin;
  @override
  List<String> get mod;
  @override
  List<String> get scanner;
  @override
  @JsonKey(ignore: true)
  _$DatabaseUserCopyWith<_DatabaseUser> get copyWith =>
      throw _privateConstructorUsedError;
}
