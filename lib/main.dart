
import 'package:flutter/material.dart';
import 'package:relativism/page/home.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await windowManager.ensureInitialized();
  WindowManager.instance.setMinimumSize(const Size(800, 600));
  WindowManager.instance.setTitle("Relativism -- Relative Variables");

  runApp(const RelativismApp());
}

class RelativismApp extends StatefulWidget {
  const RelativismApp({super.key});

  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<RelativismApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Relativism',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0x0011151c),
          brightness: Brightness.dark,
        ),
      ),

      themeAnimationStyle: AnimationStyle(curve: ElasticInCurve()),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

