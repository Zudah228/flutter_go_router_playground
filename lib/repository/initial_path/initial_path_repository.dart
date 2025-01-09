import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../service/shared_preferences/data_source/base_shared_preferences_service.dart';
import '../../service/shared_preferences/shared_preferences_key.dart';

part 'initial_path_repository.g.dart';

@riverpod
InitialPathRepository initialPathRepository(Ref ref) {
  return InitialPathRepository(ref);
}

class InitialPathRepository extends BaseSharedPreferencesService<String> {
  const InitialPathRepository(super.ref);

  @override
  SharedPreferencesKey get key => SharedPreferencesKey.initial_path;

  @override
  String? get() {
    final value = super.get();
    if (value == null) {
      return null;
    }

    return value.startsWith('/') ? value : '/$value';
  }
}
