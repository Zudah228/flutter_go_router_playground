// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $authLoadingRoute,
      $loginRoute,
      $homeShellRoute,
      $settingsRoute,
      $numberPickerRoute,
      $logoViewerRoute,
      $onExitRoute,
      $popScopeRoute,
    ];

RouteBase get $authLoadingRoute => GoRouteData.$route(
      path: '/loading',
      factory: $AuthLoadingRouteExtension._fromState,
    );

extension $AuthLoadingRouteExtension on AuthLoadingRoute {
  static AuthLoadingRoute _fromState(GoRouterState state) =>
      const AuthLoadingRoute();

  String get location => GoRouteData.$location(
        '/loading',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginRoute => GoRouteData.$route(
      path: '/auth/login',
      factory: $LoginRouteExtension._fromState,
    );

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location(
        '/auth/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homeShellRoute => ShellRouteData.$route(
      navigatorKey: HomeShellRoute.$navigatorKey,
      factory: $HomeShellRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/home',
          factory: $HomeRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/note',
          factory: $NoteListRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'edit/:id',
              factory: $NoteEditRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: '/pokemon',
          factory: $PokemonRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: ':id',
              factory: $PokemonDetailsRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $HomeShellRouteExtension on HomeShellRoute {
  static HomeShellRoute _fromState(GoRouterState state) =>
      const HomeShellRoute();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NoteListRouteExtension on NoteListRoute {
  static NoteListRoute _fromState(GoRouterState state) => const NoteListRoute();

  String get location => GoRouteData.$location(
        '/note',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NoteEditRouteExtension on NoteEditRoute {
  static NoteEditRoute _fromState(GoRouterState state) => NoteEditRoute(
        state.pathParameters['id']!,
      );

  String get location => GoRouteData.$location(
        '/note/edit/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PokemonRouteExtension on PokemonRoute {
  static PokemonRoute _fromState(GoRouterState state) => const PokemonRoute();

  String get location => GoRouteData.$location(
        '/pokemon',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PokemonDetailsRouteExtension on PokemonDetailsRoute {
  static PokemonDetailsRoute _fromState(GoRouterState state) =>
      PokemonDetailsRoute(
        state.pathParameters['id']!,
      );

  String get location => GoRouteData.$location(
        '/pokemon/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $settingsRoute => GoRouteData.$route(
      path: '/settings',
      factory: $SettingsRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'shared_preferences',
          factory: $SettingsSharedPreferencesRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'path',
          factory: $SettingsPathRouteExtension._fromState,
        ),
      ],
    );

extension $SettingsRouteExtension on SettingsRoute {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsSharedPreferencesRouteExtension
    on SettingsSharedPreferencesRoute {
  static SettingsSharedPreferencesRoute _fromState(GoRouterState state) =>
      const SettingsSharedPreferencesRoute();

  String get location => GoRouteData.$location(
        '/settings/shared_preferences',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsPathRouteExtension on SettingsPathRoute {
  static SettingsPathRoute _fromState(GoRouterState state) =>
      const SettingsPathRoute();

  String get location => GoRouteData.$location(
        '/settings/path',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $numberPickerRoute => GoRouteData.$route(
      path: '/number_picker',
      factory: $NumberPickerRouteExtension._fromState,
    );

extension $NumberPickerRouteExtension on NumberPickerRoute {
  static NumberPickerRoute _fromState(GoRouterState state) =>
      const NumberPickerRoute();

  String get location => GoRouteData.$location(
        '/number_picker',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $logoViewerRoute => GoRouteData.$route(
      path: '/logo_viewer',
      factory: $LogoViewerRouteExtension._fromState,
    );

extension $LogoViewerRouteExtension on LogoViewerRoute {
  static LogoViewerRoute _fromState(GoRouterState state) => LogoViewerRoute(
        count: int.parse(state.uri.queryParameters['count']!),
      );

  String get location => GoRouteData.$location(
        '/logo_viewer',
        queryParams: {
          'count': count.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $onExitRoute => GoRouteData.$route(
      path: '/on_exit',
      factory: $OnExitRouteExtension._fromState,
    );

extension $OnExitRouteExtension on OnExitRoute {
  static OnExitRoute _fromState(GoRouterState state) => const OnExitRoute();

  String get location => GoRouteData.$location(
        '/on_exit',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $popScopeRoute => GoRouteData.$route(
      path: '/pop_scope',
      factory: $PopScopeRouteExtension._fromState,
    );

extension $PopScopeRouteExtension on PopScopeRoute {
  static PopScopeRoute _fromState(GoRouterState state) => const PopScopeRoute();

  String get location => GoRouteData.$location(
        '/pop_scope',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
