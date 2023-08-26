import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeDataLight {
  static ThemeData themeDataLight = ThemeData(
      appBarTheme: AppBarTheme(
        titleTextStyle:
            GoogleFonts.abel().copyWith(color: Colors.black, fontSize: 40),
        color: Colors.amber,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(),
      primarySwatch: Colors.grey);
}
