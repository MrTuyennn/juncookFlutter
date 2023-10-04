import 'package:flutter/material.dart';
import 'package:juncook_master/Logic.dart';

class HomeLogic extends StatefulWidget {
  const HomeLogic({super.key});

  @override
  State<HomeLogic> createState() => _HomeLogicState();
}

class _HomeLogicState extends State<HomeLogic> {
  final Logic _logic = Logic();

  onPressed() {
    // _logic.increase();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _logic.countController.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        TextFormField(
          onChanged: (value) {
            _logic.addValue(value);
          },
        ),
        Center(
          child: StreamBuilder(
              stream: _logic.stream,
              builder: ((context, snapshot) => snapshot.hasData
                  ? Text(snapshot.data.toString())
                  : const CircularProgressIndicator())),
        ),
        Center(
          child: ElevatedButton(
              onPressed: onPressed, child: const Text('CLicked')),
        )
      ]),
    );
  }
}
