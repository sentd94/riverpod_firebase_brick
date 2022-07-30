///Basic storage operations
abstract class BasicStorageOperations {
  const BasicStorageOperations();

  Future<bool> storeDataString(String key, String data);
  Future<String?> readDataString(String key);

  Future<bool> storeDataBool(String key, bool data);
  Future<bool?> readDataBool(String key);

  Future<bool> storeDataInt(String key, int data);
  Future<int?> readDataInt(String key);

  Future<bool> deleteData(String key);
}
