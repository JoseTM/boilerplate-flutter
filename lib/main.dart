import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/configuration.dart';
import 'package:flutter_boilerplate/config/injections/app_injection.dart';
import 'package:flutter_boilerplate/config/router.dart';
import 'package:flutter_boilerplate/pages/app.dart';
import 'package:flutter_boilerplate/services/injector.dart';
import 'package:logging/logging.dart';

void main() {
  AppDI.setup(injector);
  AppRouter.instance.setupRouter();
  recordLog();
  runApp(App());
}

void recordLog() {
  if (Configuration.isInDebugMode) {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((rec) {
      print('${rec.level.name}: ${rec.time}: ${rec.message}');
    });
  }
}
