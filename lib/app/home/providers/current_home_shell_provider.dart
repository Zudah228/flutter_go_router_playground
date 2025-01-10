import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../home_shell.dart';

final currentHomeShellProvider = StateProvider.autoDispose((_) => HomeTab.home);
