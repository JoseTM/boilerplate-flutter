import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/config/configuration.dart';
import 'package:flutter_boilerplate/config/service_locator.dart';
import 'package:flutter_boilerplate/pages/random/random_bloc.dart';
import 'package:flutter_boilerplate/pages/random/random_event.dart';
import 'package:flutter_boilerplate/pages/random/random_state.dart';

class RandomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ServiceLocator.instance<RandomBloc>(),
      child: BlocBuilder<RandomBloc, RandomState>(builder: stateToWidget),
    );
  }

  Widget stateToWidget(BuildContext context, RandomState state) {
    if (state is RandomInitialState) return buildInitial(context);
    if (state is RandomUpdatedState) return buildUpdated(state);
    throw Exception('RandomState unknown: ' + state.toString());
  }

  Widget buildInitial(BuildContext context) {
    String username = ModalRoute.of(context).settings.arguments;
    BlocProvider.of<RandomBloc>(context).add(RandomUpdateEvent((builder) => builder..username = username));

    return SafeArea(
      child: Container(
        color: Colors.blue[900],
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }

  Widget buildUpdated(RandomUpdatedState state) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(),
        body: buildBody(state.username),
      ),
    );
  }

  Widget buildAppBar() {
    return AppBar(
      backgroundColor: Colors.blue[900],
      title: Text(Configuration.appName),
    );
  }

  Widget buildBody(String username) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(username, style: TextStyle(fontSize: 28)),
      ),
    );
  }
}
