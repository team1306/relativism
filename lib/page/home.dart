
import 'package:flutter/material.dart';
import 'package:relativism/widgets/toolbar/toolbar.dart';

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
        child: 
          ZoomableImageWithObjects(
            imageUrl: 'images/2025_Field.png',
            customCenter: const Offset(-10, 530), // Set your desired (0,0) point
            objectsBuilder: (scale) => [
              // Draw objects relative to the custom center
              Positioned(
                left: 0 * scale, // X coordinate from custom (0,0)
                top: 0 * scale, // Y coordinate from custom (0,0)
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}