import 'package:flutter/material.dart';

class FamilyProvider extends InheritedWidget {
  final String? colorOfHair;
  const FamilyProvider({super.key, required Widget child, this.colorOfHair})
      : super(child: child);

  @override
  bool updateShouldNotify(FamilyProvider oldWidget) {
    return colorOfHair != oldWidget.colorOfHair;
  }

  static FamilyProvider? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<FamilyProvider>();
}

class Parent extends StatefulWidget {
  const Parent({super.key});

  @override
  State<Parent> createState() => _ParentState();
}

class _ParentState extends State<Parent> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FamilyProvider(
          colorOfHair: 'sdfsdjashfsssadasdasddjfjhd',
          child: ChildWidget(),
        ),
      ),
    );
  }
}

class ChildWidget extends StatelessWidget {
  const ChildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final familyProvider = FamilyProvider.of(context);
    final String? colorOfHair = familyProvider!.colorOfHair;
    // ignore: unnecessary_null_comparison
    return colorOfHair == null
        ? const CircularProgressIndicator()
        : Text(colorOfHair);
  }
}
