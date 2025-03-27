import 'package:flutter/material.dart';

class TitleBar extends StatefulWidget {
  const TitleBar({super.key});

  @override
  State<StatefulWidget> createState() => TitleBarState();
}

class TitleBarState extends State<TitleBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.all(4)),
        IconButton(
          onPressed: action,
          icon: Icon(Icons.menu),
          alignment: Alignment.center,
          padding: EdgeInsets.all(8),
          constraints: BoxConstraints(minWidth: 32, minHeight: 32),
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
        Text("Relativism", style: TextStyle(fontSize: 18),),
        Padding(padding: EdgeInsets.symmetric(horizontal: 16)),
        IconButton(onPressed: action, icon: Icon(Icons.undo)),
        Padding(padding: EdgeInsets.symmetric(horizontal: 4)),
        IconButton(onPressed: action, icon: Icon(Icons.redo)),
        Padding(padding: EdgeInsets.symmetric(horizontal: 4)),
      ],
    );
  }
}

void action() => ();
