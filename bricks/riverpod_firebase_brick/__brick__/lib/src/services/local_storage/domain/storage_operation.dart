///Storage operations for this project
abstract class StorageOperations {
  const StorageOperations();

  Future<void> storeThemeMode(String themeModeIdentifier);
  Future<String?> retrieveThemeMode();
}
