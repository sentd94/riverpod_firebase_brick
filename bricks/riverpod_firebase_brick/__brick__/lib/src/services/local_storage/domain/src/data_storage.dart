import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/local_storage/domain/basic_storage_operations.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/local_storage/domain/storage_operation.dart';

import 'package:shared_preferences/shared_preferences.dart';

class DataStorage implements StorageOperations, BasicStorageOperations {
  final String _themeModeKey = "themeMode";

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  final Ref ref;
  DataStorage({required this.ref});

  @override
  Future<String?> readDataString(String key) async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getString(key);
  }

  @override
  Future<bool> storeDataString(String key, String data) async {
    final SharedPreferences prefs = await _prefs;
    return prefs.setString(key, data);
  }

  @override
  Future<bool> deleteData(String key) async {
    final SharedPreferences prefs = await _prefs;
    return prefs.remove(key);
  }

  @override
  Future<String?> retrieveThemeMode() {
    return readDataString(_themeModeKey);
  }

  @override
  Future<void> storeThemeMode(String themeModeIdentifier) {
    return storeDataString(_themeModeKey, themeModeIdentifier);
  }

  @override
  Future<bool?> readDataBool(String key) async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getBool(key);
  }

  @override
  Future<int?> readDataInt(String key) async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getInt(key);
  }

  @override
  Future<bool> storeDataBool(String key, bool data) async {
    final SharedPreferences prefs = await _prefs;
    return prefs.setBool(key, data);
  }

  @override
  Future<bool> storeDataInt(String key, int data) async {
    final SharedPreferences prefs = await _prefs;
    return prefs.setInt(key, data);
  }
}
