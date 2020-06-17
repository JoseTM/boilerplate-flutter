import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/pages/home/home_event.dart';
import 'package:flutter_boilerplate/pages/home/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final String defaultUsername = 'anonymous';

  HomeBloc();

  @override
  HomeState get initialState => HomeInitialState();

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is HomeInitialEvent) {
      yield* initialEventToState();
    } else if (event is HomeUpdateUsernameEvent) {
      yield* updateUsernameEventToState(event);
    } else {
      throw Exception('HomeEvent unknown: ' + event.toString());
    }
  }

  Stream<HomeState> initialEventToState() async* {
    yield HomeLoadingState();
    await Future.delayed(Duration(seconds: 2));
    yield HomeLoadedState((builder) => builder..username = defaultUsername);
  }

  Stream<HomeState> updateUsernameEventToState(HomeUpdateUsernameEvent event) async* {
    yield HomeLoadedState((builder) => builder.username = event.username);
  }
}
