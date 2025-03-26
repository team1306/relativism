import 'package:flutter/material.dart';

class Field extends StatefulWidget {
  const Field({super.key});

  @override
  State<StatefulWidget> createState() => FieldState();
}

class FieldState extends State<Field> {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(
        'https://lh3.googleusercontent.com/pw/AP1GczNTJNi2XOhgiUkjc-9b9IaecQnKIbBh_5UTWjDV2HU2sJJCZk2Hpt9oTQXpBpom4xYjsfDzi8f-1Dklu9FbyQqvVbL6w2Vj4RQzR1H1befc9Lofz1h8NXo-ewD3X9hVtV8mBBddJuZcL3ACEelslqgFHw=w1920-h925-s-no-gm?authuser=0',
      ),
    );
  }
}
