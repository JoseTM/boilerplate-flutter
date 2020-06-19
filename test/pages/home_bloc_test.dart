import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_boilerplate/pages/home/home_bloc.dart';
import 'package:flutter_boilerplate/pages/home/home_event.dart';
import 'package:flutter_boilerplate/pages/home/home_state.dart';
import 'package:flutter_boilerplate/services/navigation.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../mocks/mock_services.dart';

void main() {
  Navigation navigation = MockNavigation();

  Future<HomeBloc> build() async => HomeBloc(navigation);

  group("Home Bloc ", () {
    blocTest(
      "has HomeInitialState as initial state",
      build: build,
      skip: 0,
      expect: [HomeInitialState()],
    );

    blocTest(
      "when HomeInitialEvent is sent, the username is updated with the defaultUsername",
      build: build,
      act: (HomeBloc bloc) async => bloc.add(HomeInitialEvent()),
      expect: [HomeLoadingState(), HomeLoadedState((builder) => builder.username = 'anonymous')],
    );

    blocTest(
      "when HomeUpdateUsernameEvent is sent, the username is updated with the one received",
      build: build,
      act: (HomeBloc bloc) async =>
          bloc.add(HomeUpdateUsernameEvent((builder) => builder.username = 'irrelevantUsername')),
      expect: [HomeLoadedState((builder) => builder.username = 'irrelevantUsername')],
    );

    blocTest(
      "when NavigateToRandomEvent is sent, navigate to random screen",
      build: build,
      act: (HomeBloc bloc) async =>
          bloc.add(NavigateToRandomEvent((builder) => builder.username = 'irrelevantUsername')),
      verify: (bloc) async => verify(navigation.goToRandom("irrelevantUsername")).called(1),
    );
  });
}
