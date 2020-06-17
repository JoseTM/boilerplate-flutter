import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/navigation/router.dart';

abstract class Navigation {
  final routes = AppRouter.instance.routes;
  NavigatorState get router;

  void goBack();
  void goToHome();
  void goToRandom(String username);
}

class NavigationImpl implements Navigation {
  @override
  final routes = AppRouter.instance.routes;

  @override
  NavigatorState get router => AppRouter.instance.navigatorKey.currentState;

  @override
  void goBack() => router.pop();

  @override
  void goToHome() => router.pushReplacementNamed(routes.home);

  @override
  void goToRandom(String username) => router.pushNamed(routes.random, arguments: username);
}
