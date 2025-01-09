import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'shared_preferences_key.dart';

export 'shared_preferences_key.dart';

final sharedPreferencesProvider =
    Provider.autoDispose<SharedPreferencesService>(
  (_) => throw UnimplementedError(
    'SharedPreferencesService.initialize() を実行して'
    'sharedPreferencesProvider を override してください',
  ),
);

class SharedPreferencesService {
  SharedPreferencesService(this._prefs);

  static Future<SharedPreferencesService> initialize() async {
    return SharedPreferencesService(
      await SharedPreferences.getInstance(),
    );
  }

  final SharedPreferences _prefs;

  Future<bool> set<T>(SharedPreferencesKey key, T value) async {
    final keyName = key.keyName;

    if (value is int) {
      return _prefs.setInt(keyName, value);
    }
    if (value is double) {
      return _prefs.setDouble(keyName, value);
    }
    if (value is bool) {
      return _prefs.setBool(keyName, value);
    }
    if (value is String) {
      return _prefs.setString(keyName, value);
    }
    if (value is List<String>) {
      return _prefs.setStringList(keyName, value);
    }
    return false;
  }

  T? get<T>(SharedPreferencesKey key) {
    final keyName = key.keyName;

    if (T == int) {
      return _prefs.getInt(keyName) as T?;
    }
    if (T == double) {
      return _prefs.getDouble(keyName) as T?;
    }
    if (T == bool) {
      return _prefs.getBool(keyName) as T?;
    }
    if (T == String) {
      return _prefs.getString(keyName) as T?;
    }
    if (T == List<String>) {
      return _prefs.getStringList(keyName) as T?;
    }
    return null;
  }

  Future<bool> remove(SharedPreferencesKey key) => _prefs.remove(key.keyName);
}
