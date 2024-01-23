import "package:flutter/material.dart";

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: Color(0xFFF8EDEB),
    primary: Color(0xFFD8E2DC),
    secondary: Color(0xFFFCD5CE),
    inversePrimary: Color(0xFF52B788),
  ),
  textTheme: ThemeData.light().textTheme.apply(
        bodyColor: const Color(0xFF2F3E46),
        displayColor: Colors.black,
      ),
);
