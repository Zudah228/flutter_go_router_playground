import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../service/app_links/app_links_service.dart';

part 'watching_path.g.dart';

@riverpod
WatchingPath watchingPath(Ref ref) {
  return WatchingPath(ref);
}

class WatchingPath {
  const WatchingPath(this._ref);
  final Ref _ref;

  Stream<Uri> call() {
    return _ref.read(appLinksServiceProvider).listen.stream;
  }
}
