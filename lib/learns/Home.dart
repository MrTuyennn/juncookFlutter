import 'dart:async';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var text = 'default';

  Future<String> textFunc() {
    var value = Completer<String>();
    Future.delayed(const Duration(seconds: 1), () => value.complete('Tuyennn'));
    return value.future;
  }

  onPressed() async {
    textFunc().then((value) {
      setState(() {
        text = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Center(
          //   child: Text(text,
          //       style: const TextStyle(fontSize: 90, color: Colors.black)),
          // ),
          // Center(
          //   child: ElevatedButton(
          //       onPressed: onPressed, child: const Text('Click')),
          // )
          FutureBuilder(
              future: textFunc(),
              builder: ((context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }
                if (snapshot.hasData) {
                  var value = snapshot.data.toString();
                  return Text(value);
                }
                if (snapshot.hasError) {
                  print(snapshot.error);
                }
                return const Text('');
              }))
        ],
      ),
    );
  }
}
