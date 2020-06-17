import 'package:built_value/built_value.dart';

part 'home_state.g.dart';

abstract class HomeState {}

abstract class HomeInitialState extends HomeState implements Built<HomeInitialState, HomeInitialStateBuilder> {
  HomeInitialState._();
  factory HomeInitialState([void Function(HomeInitialStateBuilder) updates]) = _$HomeInitialState;
}

abstract class HomeLoadingState extends HomeState implements Built<HomeLoadingState, HomeLoadingStateBuilder> {
  HomeLoadingState._();
  factory HomeLoadingState([void Function(HomeLoadingStateBuilder) updates]) = _$HomeLoadingState;
}

abstract class HomeLoadedState extends HomeState implements Built<HomeLoadedState, HomeLoadedStateBuilder> {
  String get username;

  HomeLoadedState._();
  factory HomeLoadedState([void Function(HomeLoadedStateBuilder) updates]) = _$HomeLoadedState;
}
