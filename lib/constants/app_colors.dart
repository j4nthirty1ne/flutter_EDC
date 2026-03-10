import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primaryDark = Color(0xFF283593);
  static const Color primaryDeep = Color(0xFF2E3B84);
  static const Color primaryLight = Color(0xFF3F51B5);
  static const Color primaryLighter = Color(0xFFE8EAF6);

  // Neutral Colors
  static const Color white = Colors.white;
  static const Color black87 = Colors.black87;
  static const Color black54 = Colors.black54;

  // Status Colors
  static const Color success = Colors.green;
  static const Color warning = Colors.amber;
  static const Color error = Colors.red;
  static const Color info = Colors.blue;

  // Utility
  static Color greyShade(int shade) {
    final shades = {
      50: Colors.grey.shade50,
      100: Colors.grey.shade100,
      200: Colors.grey.shade200,
      300: Colors.grey.shade300,
      400: Colors.grey.shade400,
      500: Colors.grey.shade500,
      600: Colors.grey.shade600,
      700: Colors.grey.shade700,
      800: Colors.grey.shade800,
      900: Colors.grey.shade900,
    };
    return shades[shade] ?? Colors.grey;
  }
}
