import 'package:riverpod/riverpod.dart';

import '../service/shared_preferences/shared_preferences.dart';

abstract final class DependencyInjection {
  const DependencyInjection._();

  static Future<List<Override>> override() async {
    late final SharedPreferencesService sharedPreferencesService;

    await Future.wait([
      Future(() async {
        sharedPreferencesService = await SharedPreferencesService.initialize();
      }),
    ]);

    return [
      sharedPreferencesProvider.overrideWithValue(
        sharedPreferencesService,
      ),
    ];
  }
}
