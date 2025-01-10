import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../app/auth/providers/current_user.dart';
import '../../app/error/error_page.dart';
import '../../domain/path/initial_path.dart';
import 'observers/log_observer.dart';
import 'routes.dart';

part 'router.g.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter router(Ref ref) {
  final currentUser = ref.watch(currentUserNotifierProvider);

  final loadingLocation = const AuthLoadingRoute().location;

  return GoRouter(
    initialLocation: loadingLocation,
    routes: $appRoutes,
    navigatorKey: rootNavigatorKey,
    observers: [
      LogNavigationObserver(),
    ],
    redirect: (context, state) async {
      final path = state.uri.toString();

      final isAuthPage = authPagePredicate(path);
      final isLoadingPage = path == loadingLocation;

      switch (currentUser) {
        case AuthenticatedUser():
          if (isAuthPage || isLoadingPage) {
            return (await ref.read(fetchInitialPathProvider)()) ??
                const HomeRoute().location;
          }
        case UnauthenticatedUser():
          if (!isAuthPage || isLoadingPage) return const LoginRoute().location;
        case LoadingUser():
          if (!isLoadingPage) {
            return loadingLocation;
          }
      }

      return null;
    },
    errorBuilder: (context, state) {
      return const ErrorPage();
    },
  );
}
