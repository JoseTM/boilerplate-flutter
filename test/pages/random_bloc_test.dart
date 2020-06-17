import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_boilerplate/pages/random/random_bloc.dart';
import 'package:flutter_boilerplate/pages/random/random_event.dart';
import 'package:flutter_boilerplate/pages/random/random_state.dart';
import 'package:test/test.dart';

void main() {
  Future<RandomBloc> build() async => RandomBloc();

  group("Random Bloc ", () {
    blocTest(
      "has RandomInitialState as initial state",
      build: build,
      skip: 0,
      expect: [RandomInitialState()],
    );

    blocTest(
      "when RandomUpdateEvent is sent, the username is updated with the received from navigation arguments",
      build: build,
      act: (RandomBloc bloc) async => bloc.add(RandomUpdateEvent((builder) => builder.username = 'irrelevantName')),
      expect: [RandomUpdatedState((builder) => builder.username = 'irrelevantName')],
    );
  });
}
