import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/router.dart';

class Configuration {
  Configuration._();

  static bool get isInDebugMode {
    bool inDebugMode = false;
    // Assert expressions are only evaluated during development. They are ignored
    // in production. Therefore, this code only sets `inDebugMode` to true
    // in a development environment.
    assert(inDebugMode = true);
    return inDebugMode;
  }

  static String get appName => 'Boilerplate Flutter';

  static String get initialRoute => RouteName().home;

  static ThemeData get theme => ThemeData();

  static List<Locale> get sopportedLocales => [
        const Locale('es'),
        const Locale('en'),
      ];
}
