import 'package:flutter/material.dart';
import 'package:tic_tac_toe/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomTextField(
      {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.green,
              blurRadius: 5,
              spreadRadius: 1.5,
            )
          ],
        ),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            fillColor: Color.fromRGBO(3, 3, 3, 1),
            filled: true,
            hintText: hintText,
          ),
        ));
  }
}
