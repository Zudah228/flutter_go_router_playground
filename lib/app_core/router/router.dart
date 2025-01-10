import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../app/auth/providers/current_user.dart';
import '../../app/error/error_page.dart';
import '../../repository/initial_path/initial_path_repository.dart';
import 'observers/log_observer.dart';
import 'routes.dart';

part 'router.g.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
RouterConfig<Object> router(Ref ref) {
  final currentUser = ref.watch(currentUserNotifierProvider);

  final loadingLocation = const AuthLoadingRoute().location;

  return GoRouter(
    initialLocation: loadingLocation,
    routes: $appRoutes,
    navigatorKey: rootNavigatorKey,
    observers: [
      LogNavigationObserver(),
    ],
    
    redirect: (context, state) {
      final path = state.uri.toString();

      final isAuthPage = authPagePredicate(path);
      final isLoadingPage = path == loadingLocation;

      switch (currentUser) {
        case AuthenticatedUser():
          if (isAuthPage || isLoadingPage) {
            return ref.watch(initialPathRepositoryProvider).get() ??
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
