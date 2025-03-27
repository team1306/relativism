import 'package:flutter/material.dart';

class Field extends StatefulWidget {
  const Field({super.key});

  @override
  State<StatefulWidget> createState() => FieldState();
}

class FieldState extends State<Field> {
  @override
  Widget build(BuildContext context) {
    return Image.asset("images/2025_Field.png", fit: BoxFit.contain);
  }
}
