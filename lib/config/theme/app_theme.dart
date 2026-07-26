import 'package:flutter/material.dart';

const Color _customColor = Color(0XFF10B981);
const List<Color> _colorsThemes = [
  // colores primer diseño
  _customColor, // 0
  Color(0XFFF7FAF8), // 1
  Color(0XFFE8F5EE), // 2
  Color(0XFF065F46), // 3
  Color(0XFF059669), // 4
  Color(0XFF84CC16), // 5
  Color(0XFF132A22), // 6
  Color(0XFF64748B), // 7

  Color(0XFF22C55E), // 8
  Color(0XFFF59E0B), // 9
  Color(0XFFEF4444), // 10
  Color(0XFF0EA5E9), // 11
  Colors.pink, // 12
  // colores segundo diseño
  Color(0XFFFFF9F5), // 13
  Color(0XFFFFF3E8), // 14
  Color(0XFFFF6B35), // 15
  Color(0XFFF97316), // 16
  Color(0XFF172554), // 17
  Color(0XFF2563EB), // 18
  Color(0XFF111827), // 19
  Color(0XFF6B7280), // 20

  Color(0XFF16A34A), // 21
  Color(0XFFEAB308), // 22
  Color(0XFFDC2626), // 23
  Color(0XFF38BDF8), // 24
  // colores modo oscuro
  Color(0XFF071A18), // 25
  Color(0XFF102A2A), // 26
  Color(0XFF34D399), // 27
  Color(0XFF22D3EE), // 28
  Color(0XFFE6FFFA), // 29
];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
    : assert(
        selectedColor >= 0 && selectedColor <= _colorsThemes.length,
        'Colors must be between 0 to 15.',
      );

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorsThemes[selectedColor],
      brightness: Brightness.light,
    );
  }
}
