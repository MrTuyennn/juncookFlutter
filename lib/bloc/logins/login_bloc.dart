import 'dart:async';

import 'package:juncook_master/bloc/logins/login_event.dart';
import 'package:juncook_master/bloc/logins/login_state.dart';

class LoginBloc {
  final _stateController = StreamController<LoginState>();

  Stream<LoginState> get state => _stateController.stream;

  void send(LoginEvent event) {
    switch (event) {
      case LoginEvent.login:
        _stateController.sink.add(LoginState.loading());
        Future.delayed(const Duration(seconds: 2), () {
          _stateController.sink.add(LoginState.success());
        });
        break;
    }
  }

  void dispose() {
    _stateController.close();
  }
}
