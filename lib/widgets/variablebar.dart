import 'package:flutter/material.dart';

class VariableBar extends StatefulWidget {
  const VariableBar({super.key});

  @override
  State<StatefulWidget> createState() => VariableBarState();
}

class VariableBarState extends State<VariableBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Center(child: Text("Test")),
      ],
    );
  }
}
