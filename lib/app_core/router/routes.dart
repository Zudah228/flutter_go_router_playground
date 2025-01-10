import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/auth/auth_loading_page.dart';
import '../../app/auth/login_page.dart';
import '../../app/home/home_page.dart';
import '../../app/home/home_shell.dart';
import '../../app/logo_viewer/logo_viewer_page.dart';
import '../../app/note/note_edit_page.dart';
import '../../app/note/note_list_page.dart';
import '../../app/number_picker/number_picker_page.dart';
import '../../app/on_exit/on_exit_page.dart';
import '../../app/on_exit/providers/on_exit_handler.dart';
import '../../app/pokemon/pokemon_page.dart';
import '../../app/pokemon_details/pokemon_details_page.dart';
import '../../app/pop_scope/pop_scope_page.dart';
import '../../app/settings/settings_page.dart';
import '../../app/settings_path/settings_path_page.dart';
import '../../app/settings_shared_preferences/settings_shared_preferences_page.dart';
import '../ui_parts/confirmation_dialog.dart';
import 'transitions/modal_bottom_sheet_page.dart';

part 'routes.g.dart';

@TypedGoRoute<AuthLoadingRoute>(path: '/loading')
class AuthLoadingRoute extends GoRouteData {
  const AuthLoadingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AuthLoadingPage();
  }
}

const _authPagePrefix = '/auth';

bool authPagePredicate(String url) {
  return url == _authPagePrefix || url.startsWith('$_authPagePrefix/');
}

@TypedGoRoute<LoginRoute>(path: '$_authPagePrefix/login')
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginPage();
  }
}

@TypedShellRoute<HomeShellRoute>(
  routes: [
    TypedGoRoute<HomeRoute>(
      path: '/home',
    ),
    TypedGoRoute<NoteListRoute>(
      path: '/note',
      routes: [
        TypedGoRoute<NoteEditRoute>(path: 'edit/:id'),
      ],
    ),
    TypedGoRoute<PokemonRoute>(
      path: '/pokemon',
      routes: [
        TypedGoRoute<PokemonDetailsRoute>(path: ':id'),
      ],
    ),
  ],
)

// Home
class HomeShellRoute extends ShellRouteData {
  const HomeShellRoute();

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return HomeShell(child: navigator);
  }

  static final GlobalKey<NavigatorState> $navigatorKey = HomeShell.navigatorKey;
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(child: HomePage());
  }
}

// Settings
@TypedGoRoute<SettingsRoute>(
  path: '/settings',
  routes: [
    TypedGoRoute<SettingsSharedPreferencesRoute>(
      path: 'shared_preferences',
    ),
    TypedGoRoute<SettingsPathRoute>(path: 'path'),
  ],
)
class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingsPage();
  }
}

class SettingsSharedPreferencesRoute extends GoRouteData {
  const SettingsSharedPreferencesRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingsSharedPreferencesPage();
  }
}

class SettingsPathRoute extends GoRouteData {
  const SettingsPathRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingsPathPage();
  }
}

// Note
class NoteListRoute extends GoRouteData {
  const NoteListRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(child: NoteListPage());
  }
}

class NoteEditRoute extends GoRouteData {
  const NoteEditRoute(this.id);

  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return NoteEditPage(id);
  }
}

// Pokemon
class PokemonRoute extends GoRouteData {
  const PokemonRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      child: PokemonPage(),
    );
  }
}

class PokemonDetailsRoute extends GoRouteData {
  const PokemonDetailsRoute(this.id);

  final String id;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(
      child: PokemonDetailsPage(id),
    );
  }

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PokemonDetailsPage(id);
  }
}

@TypedGoRoute<NumberPickerRoute>(path: '/number_picker')
class NumberPickerRoute extends GoRouteData {
  const NumberPickerRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const ModalBottomSheetPage(
      child: NumberPickerPage(),
    );
  }
}

@TypedGoRoute<LogoViewerRoute>(path: '/logo_viewer')
class LogoViewerRoute extends GoRouteData {
  const LogoViewerRoute({required this.count});

  final int count;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return LogoViewerPage(count: count);
  }
}

@TypedGoRoute<OnExitRoute>(path: '/on_exit')
class OnExitRoute extends GoRouteData {
  const OnExitRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OnExitPage();
  }

  @override
  FutureOr<bool> onExit(BuildContext context, GoRouterState state) {
    final ref = ProviderScope.containerOf(context);
    if (ref.read(onExitHandlerNotifierProvider)) {
      return ConfirmationDialog.show(
        context,
        args: (title: '戻りますか？'),
        noTransitionOnPop: true,
      );
    }

    return super.onExit(context, state);
  }
}

@TypedGoRoute<PopScopeRoute>(path: '/pop_scope')
class PopScopeRoute extends GoRouteData {
  const PopScopeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PopScopePage();
  }
}
