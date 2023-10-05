import 'package:flutter/material.dart';
import 'package:juncook_master/bloc/logins/login_bloc.dart';
import 'package:juncook_master/bloc/logins/login_event.dart';
import 'package:juncook_master/bloc/logins/login_state.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var loginBloc = LoginBloc();

  TextStyle textStyle = const TextStyle(fontSize: 30);

  onPressed() {
    loginBloc.send(LoginEvent.login);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: loginBloc.state,
          builder: ((context, snapshot) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (snapshot.data!.isLoading)
                  const CircularProgressIndicator()
                else if (snapshot.data!.isError)
                  Text(
                    'Login thất bại',
                    style: textStyle,
                  )
                else
                  Text(
                    'login thành công',
                    style: textStyle,
                  ),
                ElevatedButton(
                    onPressed: onPressed, child: const Text('Click')),
              ],
            );
          }),
          initialData: LoginState.initial()),
    );
  }
}
