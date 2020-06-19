import 'package:flutter_boilerplate/config/injections/bloc_injection.dart';
import 'package:flutter_boilerplate/config/injections/service_injection.dart';
import 'package:flutter_boilerplate/services/injector.dart';

class AppDI {
  AppDI._();

  static void setup(Injector injector) {
    // DatasourceDI if needed
    // RepositoryDI if needed
    // DomainDI or UseCaseDI if needed
    ServiceDI.setup(injector);
    BlocDI.setup(injector);
  }
}
