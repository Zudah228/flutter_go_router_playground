import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../repository/auth/auth_repository.dart';
import '../../utils/uuid.dart';

part 'current_user.g.dart';

sealed class CurrentUser {
  const CurrentUser();

  String get userId;
  bool get isAuthenticated;
}

class AuthenticatedUser extends CurrentUser {
  const AuthenticatedUser({required this.userId});

  @override
  final String userId;

  @override
  bool get isAuthenticated => true;
}

class LoadingUser extends CurrentUser {
  const LoadingUser();

  @override
  String get userId => throw Exception('ユーザー認証中です');

  @override
  bool get isAuthenticated => false;
}

class UnauthenticatedUser extends CurrentUser {
  const UnauthenticatedUser();

  @override
  String get userId => throw Exception('未認証ユーザーです');

  @override
  bool get isAuthenticated => false;
}

@Riverpod(keepAlive: true)
class CurrentUserNotifier extends _$CurrentUserNotifier {
  @override
  CurrentUser build() {
    return const LoadingUser();
  }

  Future<void> load() async {
    // 認証中を擬似的に表現
    await Future.delayed(const Duration(seconds: 3));

    state = _load();
  }

  CurrentUser _load() {
    final userId = ref.watch(authRepositoryProvider).get();

    if (userId == null) {
      return const UnauthenticatedUser();
    } else {
      return AuthenticatedUser(userId: userId);
    }
  }

  Future<void> login() async {
    final userId = UuidGenerator.generate();
    await ref.read(authRepositoryProvider).set(userId);

    state = AuthenticatedUser(userId: userId);
  }

  Future<void> logout() async {
    await ref.read(authRepositoryProvider).remove();

    state = const UnauthenticatedUser();
  }
}
