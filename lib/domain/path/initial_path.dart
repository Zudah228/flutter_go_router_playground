import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../repository/initial_path/initial_path_repository.dart';
import '../../service/app_links/app_links_service.dart';

part 'initial_path.g.dart';

@riverpod
FetchInitialPath fetchInitialPath(Ref ref) {
  return FetchInitialPath(ref);
}

class FetchInitialPath {
  const FetchInitialPath(this._ref);
  final Ref _ref;

  // 複数回実行しても同じ場所に遷移しないように、シングルトンで真偽値を管理する
  static bool _fetched = false;

  Future<String?> call() async {
    if (_fetched) {
      return null;
    }
    _fetched = true;

    final initialLink =
        await _ref.read(appLinksServiceProvider).getInitialLink();

    if (initialLink != null) {
      return initialLink.path;
    }

    final local = _ref.read(initialPathRepositoryProvider).get();

    if (local != null) {
      return local;
    }

    return null;
  }
}
