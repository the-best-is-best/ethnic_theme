// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $getStartRoute,
    ];

RouteBase get $getStartRoute => GoRouteData.$route(
      path: '/',
      name: '/',
      factory: $GetStartRouteExtension._fromState,
    );

extension $GetStartRouteExtension on GetStartRoute {
  static GetStartRoute _fromState(GoRouterState state) => const GetStartRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
