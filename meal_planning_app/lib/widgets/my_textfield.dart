import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  const MyTextField({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        style: const TextStyle(fontSize: 15),
        controller: controller,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 14, color: Colors.grey[500])),
        obscureText: obscureText,
      ),
    );
  }
}
