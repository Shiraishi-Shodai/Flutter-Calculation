import 'package:flutter/material.dart';

class Calculaton extends StatelessWidget {
  const Calculaton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: TextField(onChanged: ((value) => print(value))),
      alignment: Alignment.bottomCenter,
    );
  }
}
