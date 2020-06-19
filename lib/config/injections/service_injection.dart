import 'package:flutter_boilerplate/services/injector.dart';
import 'package:flutter_boilerplate/services/navigation.dart';

class ServiceDI {
  ServiceDI._();

  static void setup(Injector injector) {
    injector.singletonEager<Navigation>(NavigationImpl());
  }
}
