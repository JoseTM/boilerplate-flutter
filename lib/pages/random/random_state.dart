import 'package:built_value/built_value.dart';

part 'random_state.g.dart';

abstract class RandomState {}

abstract class RandomInitialState extends RandomState implements Built<RandomInitialState, RandomInitialStateBuilder> {
  RandomInitialState._();
  factory RandomInitialState([void Function(RandomInitialStateBuilder) updates]) = _$RandomInitialState;
}

abstract class RandomUpdatedState extends RandomState implements Built<RandomUpdatedState, RandomUpdatedStateBuilder> {
  String get username;

  RandomUpdatedState._();
  factory RandomUpdatedState([void Function(RandomUpdatedStateBuilder) updates]) = _$RandomUpdatedState;
}
