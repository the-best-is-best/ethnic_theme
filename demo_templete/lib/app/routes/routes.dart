import 'dart:async';

import 'package:demo_templete/features/home/screen/home_screen.dart';
import 'package:demo_templete/main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

GoRouter goRouter = GoRouter(
  debugLogDiagnostics: true,
  routes: $appRoutes,
  initialLocation: '/',
  redirect: (context, state) async {
    return state.path;
  },
  navigatorKey: navigatorKey,
);

@TypedGoRoute<GetStartRoute>(path: GetStartRoute.path, name: GetStartRoute.path)
@immutable
class GetStartRoute extends GoRouteData {
  static const path = '/';
  const GetStartRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const HomeScreen();
  }
}
