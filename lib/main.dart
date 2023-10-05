import 'package:flutter/material.dart';
import 'package:juncook_master/learns/HomeLogic.dart';
import 'package:juncook_master/view/CounterScreen.dart';
import 'package:juncook_master/view/LoginScreen.dart';
import 'package:juncook_master/view/Parent.dart';
import 'package:juncook_master/view/ParentScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CounterScreen(),
    );
  }
}
