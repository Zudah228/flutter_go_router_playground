import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/path/initial_path.dart';

part 'initial_path.g.dart';

@riverpod
Future<String?> initialPath(Ref ref) {
  return ref.watch(fetchInitialPathProvider)();
}
