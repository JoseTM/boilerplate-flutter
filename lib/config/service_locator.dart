import 'package:flutter_boilerplate/pages/home/home_bloc.dart';
import 'package:flutter_boilerplate/pages/random/random_bloc.dart';
import 'package:flutter_boilerplate/navigation/navigation.dart';
import 'package:get_it/get_it.dart';

class ServiceLocator {
  static final GetIt instance = GetIt.instance;

  static void setup() {
    _registerServices();
    _registerAPIs();
    _registerDatasources();
    _registerRepositories();
    _registerBlocs();
  }

  static void _registerServices() {
    instance.registerSingleton<Navigation>(NavigationImpl());
  }

  static void _registerAPIs() {}

  static void _registerDatasources() {}

  static void _registerRepositories() {}

  static void _registerBlocs() {
    instance.registerFactory<HomeBloc>(() => HomeBloc());
    instance.registerFactory<RandomBloc>(() => RandomBloc());
  }
}
