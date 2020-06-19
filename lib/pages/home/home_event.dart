import 'package:built_value/built_value.dart';

part 'home_event.g.dart';

abstract class HomeEvent {}

abstract class HomeInitialEvent extends HomeEvent implements Built<HomeInitialEvent, HomeInitialEventBuilder> {
  HomeInitialEvent._();
  factory HomeInitialEvent([void Function(HomeInitialEventBuilder) updates]) = _$HomeInitialEvent;
}

abstract class HomeUpdateUsernameEvent extends HomeEvent
    implements Built<HomeUpdateUsernameEvent, HomeUpdateUsernameEventBuilder> {
  String get username;

  HomeUpdateUsernameEvent._();
  factory HomeUpdateUsernameEvent([void Function(HomeUpdateUsernameEventBuilder) updates]) = _$HomeUpdateUsernameEvent;
}

abstract class NavigateToRandomEvent extends HomeEvent
    implements Built<NavigateToRandomEvent, NavigateToRandomEventBuilder> {
  String get username;

  NavigateToRandomEvent._();
  factory NavigateToRandomEvent([void Function(NavigateToRandomEventBuilder) updates]) = _$NavigateToRandomEvent;
}
