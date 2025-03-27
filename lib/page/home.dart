
import 'package:flutter/material.dart';
import 'package:relativism/widgets/toolbar/toolbar.dart';
import 'package:relativism/widgets/variablebar.dart';

import '../widgets/field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: Toolbar(),
      body: Row(
        children: [
          Flexible(flex: 0, child: ConstrainedBox(constraints: BoxConstraints(maxWidth: 324), child: VariableBar())),
          Padding(padding: EdgeInsets.all(4)),
          VerticalDivider(),
          Padding(padding: EdgeInsets.all(8)),
          Flexible(flex: 1, child: Field()),
          Padding(padding: EdgeInsets.all(8))
        ]
      ),
    );
  }
}