import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/pages/home/home_bloc.dart';
import 'package:flutter_boilerplate/pages/home/home_screen.dart';
import 'package:flutter_boilerplate/pages/random/random_bloc.dart';
import 'package:flutter_boilerplate/pages/random/random_screen.dart';

class AppRouter {
  static final AppRouter _instance = AppRouter._();

  static AppRouter get instance => _instance;

  AppRouter._();

  final RouteName routes = RouteName();
  final Router router = Router();
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Route Function(RouteSettings) get generator => router.generator;

  Handler _buildHandler<B extends Bloc>(Widget screen, B bloc) {
    return Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) => BlocProvider<B>(
        create: (BuildContext context) => bloc,
        child: screen,
      ),
    );
  }

  Handler get _homeScreenHandler => _buildHandler(HomeScreen(), HomeBloc());

  Handler get _randomScreenHandler => _buildHandler(RandomScreen(), RandomBloc());

  void setupRouter() {
    router.define(routes.home, handler: _homeScreenHandler, transitionType: TransitionType.fadeIn);
    router.define(routes.random, handler: _randomScreenHandler, transitionType: TransitionType.fadeIn);
  }
}

class RouteName {
  final String home = "/home";
  final String random = "/random";
}
