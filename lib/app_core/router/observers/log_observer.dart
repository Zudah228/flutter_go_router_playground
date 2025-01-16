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
    final router = GoRouter.maybeOf(route.navigator!.context);
    if (router == null) {
      return;
    }

    // ルートが不正な場合
    if (router.routerDelegate.currentConfiguration.isEmpty) {
      return;
    }

    final location = router.state?.uri.path;

    print(location);
  }
}
