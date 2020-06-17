import 'package:built_value/built_value.dart';

part 'random_event.g.dart';

abstract class RandomEvent {}

abstract class RandomUpdateEvent extends RandomEvent implements Built<RandomUpdateEvent, RandomUpdateEventBuilder> {
  String get username;

  RandomUpdateEvent._();
  factory RandomUpdateEvent([void Function(RandomUpdateEventBuilder) updates]) = _$RandomUpdateEvent;
}
