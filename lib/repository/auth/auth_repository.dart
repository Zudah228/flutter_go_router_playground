import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../service/shared_preferences/data_source/base_shared_preferences_service.dart';
import '../../service/shared_preferences/shared_preferences_key.dart';

part 'auth_repository.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepository(ref);
}

class AuthRepository extends BaseSharedPreferencesService<String> {
  const AuthRepository(super.ref);

  @override
  SharedPreferencesKey get key => SharedPreferencesKey.user_id;
}
