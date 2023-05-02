import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final List<Shadow> shadows;
  final String text;
  final double foontSize;
  const CustomText(
      {super.key,
      required this.shadows,
      required this.text,
      required this.foontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color.fromARGB(255, 86, 82, 82),
        fontWeight: FontWeight.bold,
        fontSize: foontSize,
        shadows: shadows,
      ),
    );
  }
}
