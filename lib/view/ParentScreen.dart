import 'package:flutter/material.dart';

class ParentScreen extends StatefulWidget {
  const ParentScreen({super.key});

  @override
  State<ParentScreen> createState() => _ParentScreenState();
}

class _ParentScreenState extends State<ParentScreen> {
  String ColorOfHair = 'black';

  @override
  Widget build(BuildContext context) {
    return Child(
      colorOfHair: ColorOfHair,
    );
  }
}

class Child extends StatelessWidget {
  final String colorOfHair;

  const Child({super.key, required this.colorOfHair});

  @override
  Widget build(BuildContext context) {
    return ChildOfChild(
      colorOfHairl: colorOfHair,
    );
  }
}

class ChildOfChild extends StatelessWidget {
  final String colorOfHairl;
  const ChildOfChild({super.key, required this.colorOfHairl});

  @override
  Widget build(BuildContext context) {
    return Text(colorOfHairl);
  }
}
