import 'package:flutter/material.dart';
import 'package:relativism/widgets/toolbar/menu.dart';

class Toolbar extends StatefulWidget implements PreferredSizeWidget {
  const Toolbar({super.key});

  @override
  State<StatefulWidget> createState() => ToolbarState();

  @override
  Size get preferredSize => Size(240, 64);
}

class ToolbarState extends State<Toolbar> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [TitleBar(), VerticalDivider()]);
  }
}