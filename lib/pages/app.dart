import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/configuration.dart';
import 'package:flutter_boilerplate/config/router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final router = AppRouter.instance;

    return MaterialApp(
      title: Configuration.appName,
      theme: Configuration.theme,
      initialRoute: Configuration.initialRoute,
      navigatorKey: router.navigatorKey,
      onGenerateRoute: router.generator,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: Configuration.sopportedLocales,
    );
  }
}
