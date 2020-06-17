import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/components/buttons/square_button.dart';
import 'package:flutter_boilerplate/config/configuration.dart';
import 'package:flutter_boilerplate/config/service_locator.dart';
import 'package:flutter_boilerplate/navigation/navigation.dart';
import 'package:flutter_boilerplate/pages/home/home_bloc.dart';
import 'package:flutter_boilerplate/pages/home/home_event.dart';
import 'package:flutter_boilerplate/pages/home/home_state.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeBloc bloc;
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext widgetContext) {
    return BlocBuilder<HomeBloc, HomeState>(builder: stateToWidget);
  }

  Widget stateToWidget(BuildContext context, HomeState state) {
    bloc = BlocProvider.of<HomeBloc>(context);

    if (state is HomeInitialState) return buildInitial(context);
    if (state is HomeLoadingState) return buildLoading();
    if (state is HomeLoadedState) return buildLoaded(state);
    throw Exception('HomeState unknown: ' + state.toString());
  }

  Widget buildInitial(BuildContext context) {
    bloc.add(HomeInitialEvent());
    return buildLoading();
  }

  Widget buildLoading() {
    return SafeArea(
      child: Container(
        color: Colors.blue[900],
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }

  Widget buildLoaded(HomeLoadedState state) {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildUsername(username),
          buildWelcomeMessage(),
          buildTextFieldForUsername(),
          buildButtons(username),
        ],
      ),
    );
  }

  Widget buildUsername(String username) {
    return Text(username, style: TextStyle(fontSize: 28));
  }

  Widget buildWelcomeMessage() {
    return Text('Welcome to my boilerplate');
  }

  Widget buildTextFieldForUsername() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: textController,
        onSubmitted: onSubmitUsername,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Put here your username',
        ),
      ),
    );
  }

  void onSubmitUsername(String value) {
    if (value.isNotEmpty) {
      textController.clear();
      bloc.add(HomeUpdateUsernameEvent((builder) => builder..username = value));
    }
  }

  Widget buildButtons(String username) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 12,
      children: <Widget>[
        buildButtonNavigation(username),
        buildButtonSubmit(),
      ],
    );
  }

  Widget buildButtonNavigation(String username) {
    return SquareButton(
      text: 'Go to random screen',
      onPressed: () => ServiceLocator.instance<Navigation>().goToRandom(username),
    );
  }

  Widget buildButtonSubmit() {
    return SquareButton(
      text: 'Update username',
      onPressed: () => onSubmitUsername(textController.value.text),
    );
  }
}
