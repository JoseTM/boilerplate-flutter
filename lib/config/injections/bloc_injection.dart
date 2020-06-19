import 'package:flutter_boilerplate/pages/home/home_bloc.dart';
import 'package:flutter_boilerplate/pages/random/random_bloc.dart';
import 'package:flutter_boilerplate/services/injector.dart';

class BlocDI {
  BlocDI._();

  static void setup(Injector i) {
    i.multiple<HomeBloc>(() => HomeBloc(i.inject()));
    i.multiple<RandomBloc>(() => RandomBloc());
  }
}
