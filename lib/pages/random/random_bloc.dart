import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/pages/random/random_event.dart';
import 'package:flutter_boilerplate/pages/random/random_state.dart';

class RandomBloc extends Bloc<RandomEvent, RandomState> {
  RandomBloc();

  @override
  RandomState get initialState => RandomInitialState();

  @override
  Stream<RandomState> mapEventToState(RandomEvent event) async* {
    if (event is RandomUpdateEvent) {
      yield* initialEventToState(event);
    } else {
      throw Exception('RandomEvent unknown: ' + event.toString());
    }
  }

  Stream<RandomState> initialEventToState(RandomUpdateEvent event) async* {
    yield RandomUpdatedState((builder) => builder..username = event.username);
  }
}
