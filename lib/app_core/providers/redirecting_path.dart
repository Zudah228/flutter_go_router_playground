import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/path/watching_path.dart';

part 'redirecting_path.g.dart';

@riverpod
Stream<Uri> redirectingPath(Ref ref) {
  return ref.watch(watchingPathProvider)();
}

