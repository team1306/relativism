import 'package:flutter/material.dart';

class Toolbar extends StatefulWidget implements PreferredSizeWidget{
  const Toolbar({super.key});

  @override
  State<StatefulWidget> createState() => ToolbarState();

  @override
  Size get preferredSize => Size(100, 30);
  
}

class ToolbarState extends State<Toolbar>{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(onPressed: action, child: Text("Data1"),),
        FloatingActionButton(onPressed: action, child: Text("Data2"),)
      ],
    );
  }
}

void action() => ();