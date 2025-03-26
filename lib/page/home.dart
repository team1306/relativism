
import 'package:flutter/material.dart';
import 'package:relativism/widgets/toolbar.dart';

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
      body: Center(
        child: Field()
      ),
    );
  }
}