import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/configuration.dart';
import 'package:flutter_boilerplate/config/service_locator.dart';
import 'package:flutter_boilerplate/navigation/router.dart';
import 'package:flutter_boilerplate/pages/app.dart';
import 'package:logging/logging.dart';

void main() {
  ServiceLocator.setup();
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
