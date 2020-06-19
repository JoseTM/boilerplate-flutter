import 'package:get_it/get_it.dart';

abstract class Injector {
  T inject<T>();
  void singleton<T>(T Function() creator);
  void singletonEager<T>(T instance);
  void multiple<T>(T Function() creator);
}

class _InjectorImpl implements Injector {
  static final _InjectorImpl _instance = _InjectorImpl._internal();

  factory _InjectorImpl() => _instance;

  _InjectorImpl._internal();

  @override
  T inject<T>() => GetIt.instance.get<T>();

  @override
  void multiple<T>(T Function() instance) => GetIt.instance.registerFactory(instance);

  @override
  void singleton<T>(T Function() instance) => GetIt.instance.registerLazySingleton(instance);

  @override
  void singletonEager<T>(T instance) => GetIt.instance.registerSingleton(instance);
}

Injector get injector => _InjectorImpl();
