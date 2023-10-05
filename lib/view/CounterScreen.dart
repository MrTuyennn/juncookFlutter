import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:juncook_master/bloc/counter/counter_bloc.dart';
import 'package:juncook_master/bloc/counter/counter_event.dart';
import 'package:juncook_master/bloc/counter/counter_provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final TextStyle _textStyle = const TextStyle(fontSize: 30);
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      child: Scaffold(
        body: BlocBuilder<CounterBloc, int>(builder: ((context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Count $state', style: _textStyle),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _customButton(() => _increase(context), 'Increase count'),
                    _customButton(() => _decrease(context), 'Decrease count')
                  ],
                )
              ],
            ),
          );
        })),
      ),
    );
  }

  _increase(BuildContext context) {
    context.read<CounterBloc>().add(IncreaseEvent());
  }

  _decrease(BuildContext context) {
    context.read<CounterBloc>().add(DecreaseEvent());
  }

  Widget _customButton(Function() onPressed, String text) {
    return ElevatedButton(onPressed: onPressed, child: Text(text));
  }
}
