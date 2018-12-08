/* This is free and unencumbered software released into the public domain. */

/// Interface for accessing and modifying preference data.
///
/// For any particular set of preferences, there is a single instance of this
/// class that all clients share.
///
/// See: https://developer.android.com/reference/android/content/SharedPreferences
abstract class SharedPreferences {
  /// See [Context.getSharedPreferences].
  static Future<SharedPreferences> open(final String name, [final int mode = 0]) async {
    return _SharedPreferences(name, mode);
  }

  /// Retrieves a value from the preferences.
  ///
  /// See: https://developer.android.com/reference/android/content/SharedPreferences#getBoolean(java.lang.String,%20boolean)
  T get<T>(String key, [T defaultValue]);

  /// Checks whether the preferences contains a preference.
  ///
  /// See: https://developer.android.com/reference/android/content/SharedPreferences#contains(java.lang.String)
  bool contains(String key) => get(key) != null;

  /// Retrieves all values from the preferences.
  ///
  /// See: https://developer.android.com/reference/android/content/SharedPreferences#getAll()
  Map<String, dynamic> getAll();

  /// Retrieves a boolean value from the preferences.
  ///
  /// See: https://developer.android.com/reference/android/content/SharedPreferences#getBoolean(java.lang.String,%20boolean)
  bool getBoolean(String key, [bool defaultValue]) => get(key, defaultValue);

  /// Retrieves a float value from the preferences.
  ///
  /// See: https://developer.android.com/reference/android/content/SharedPreferences#getFloat(java.lang.String,%20float)
  double getFloat(String key, [double defaultValue]) => get(key, defaultValue);

  /// Retrieves an int value from the preferences.
  ///
  /// See: https://developer.android.com/reference/android/content/SharedPreferences#getInt(java.lang.String,%20int)
  int getInt(String key, [int defaultValue]) => get(key, defaultValue);

  /// Retrieves a long value from the preferences.
  ///
  /// See: https://developer.android.com/reference/android/content/SharedPreferences#getLong(java.lang.String,%20long)
  int getLong(String key, [int defaultValue]) => get(key, defaultValue);

  /// Retrieves a string value from the preferences.
  ///
  /// See: https://developer.android.com/reference/android/content/SharedPreferences#getString(java.lang.String,%20java.lang.String)
  String getString(String key, [String defaultValue]) => get(key, defaultValue);

  /// Retrieves a set of string values from the preferences.
  ///
  /// See: https://developer.android.com/reference/android/content/SharedPreferences#getStringSet(java.lang.String,%20java.util.Set%3Cjava.lang.String%3E)
  Set<String> getStringSet(String key, [Set<String> defaultValue]) => get(key, defaultValue);
}

class _SharedPreferences extends SharedPreferences {
  final String name;
  final int mode;

  _SharedPreferences(this.name, this.mode);

  T get<T>(String key, [T defaultValue]) {
    return defaultValue; // TODO
  }

  Map<String, dynamic> getAll() {
    return <String, dynamic>{}; // TODO
  }
}
