// ignore_for_file: avoid_print

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class LogNavigationObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);

    _log(route);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);

    _log(route);
  }

  void _log(Route route) {
    final location =
        GoRouter.maybeOf(route.navigator!.context)?.state?.uri.path;

    print(location);
  }
}
