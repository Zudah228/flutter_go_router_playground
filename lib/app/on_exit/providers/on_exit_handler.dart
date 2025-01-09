import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'on_exit_handler.g.dart';

@riverpod
class OnExitHandlerNotifier extends _$OnExitHandlerNotifier {
  @override
  bool build() {
    return true;
  }

  void toggle() {
    state = !state;
  }
}
