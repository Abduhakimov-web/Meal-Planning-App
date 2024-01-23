import "package:flutter/material.dart";

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    background: Color(0xFF081C15),
    primary: Color(0xFF2D6A4F),
    secondary: Color(0xFF52B788),
    inversePrimary: Color(0xFF95D5B2),
  ),
  textTheme: ThemeData.dark().textTheme.apply(
        bodyColor: const Color(0xFFD8F3DC),
        displayColor: Colors.white,
      ),
);
