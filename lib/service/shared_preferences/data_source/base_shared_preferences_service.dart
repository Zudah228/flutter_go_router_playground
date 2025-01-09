import 'package:meta/meta.dart';
import 'package:riverpod/riverpod.dart';

import '../shared_preferences.dart';

/// SharedPreferences の基本的な CRUD を提供できる抽象クラス
///
/// ```dart
/// class TutorialDisplayed extends BaseSharedPreferencesService<bool> {
///   const TutorialDisplayed(super.ref);
///
///   @override
///   SharedPreferencesKey get key => SharedPreferencesKey.tutorialDisplayed;
/// }
///
/// final tutorialDisplayed = TutorialDisplayed(ref).get() ?? false;
/// ```
abstract class BaseSharedPreferencesService<T> {
  const BaseSharedPreferencesService(this.ref);

  @protected
  final Ref ref;

  SharedPreferencesKey get key;

  Future<void> set(T value) async {
    await ref.read(sharedPreferencesProvider).set(key, value);
  }

  T? get() {
    return ref.read(sharedPreferencesProvider).get(key);
  }

  Future<void> remove() async {
    await ref.read(sharedPreferencesProvider).remove(key);
  }
}
