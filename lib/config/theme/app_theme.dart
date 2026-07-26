import 'package:flutter/material.dart';

const Color _customColor = Color(0XFF10B981);
const List<Color> _colorsThemes = [
  // colores primer diseño
  _customColor,
  Color(0XFFF7FAF8),
  Color(0XFFE8F5EE),
  Color(0XFF065F46),
  Color(0XFF059669),
  Color(0XFF84CC16),
  Color(0XFF132A22),
  Color(0XFF64748B),

  Color(0XFF22C55E),
  Color(0XFFF59E0B),
  Color(0XFFEF4444),
  Color(0XFF0EA5E9),
  // colores segundo diseño
  Color(0XFFFFF9F5),
  Color(0XFFFFF3E8),
  Color(0XFFFF6B35),
  Color(0XFFF97316),
  Color(0XFF172554),
  Color(0XFF2563EB),
  Color(0XFF111827),
  Color(0XFF6B7280),

  Color(0XFF16A34A),
  Color(0XFFEAB308),
  Color(0XFFDC2626),
  Color(0XFF38BDF8),
  // colores modo oscuro
  Color(0XFF071A18),
  Color(0XFF102A2A),
  Color(0XFF34D399),
  Color(0XFF22D3EE),
  Color(0XFFE6FFFA),
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
      brightness: Brightness.dark,
    );
  }
}
