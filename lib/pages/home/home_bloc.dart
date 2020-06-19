import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/pages/home/home_event.dart';
import 'package:flutter_boilerplate/pages/home/home_state.dart';
import 'package:flutter_boilerplate/services/navigation.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final Navigation _navigation;

  final String defaultUsername = 'anonymous';

  HomeBloc(this._navigation);

  @override
  HomeState get initialState => HomeInitialState();

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is HomeInitialEvent) {
      yield* initialEventToState();
    } else if (event is HomeUpdateUsernameEvent) {
      yield* updateUsernameEventToState(event);
    } else if (event is NavigateToRandomEvent) {
      navigateToRandomScreen(event);
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

  void navigateToRandomScreen(NavigateToRandomEvent event) {
    _navigation.goToRandom(event.username);
  }
}
