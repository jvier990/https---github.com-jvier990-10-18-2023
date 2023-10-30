import 'package:flutter/material.dart';

const _customcolor = Colors.orange;
const List<Color> _colorThemes = [
  _customcolor,
  Colors.orange,
  Colors.black87,
  Colors.purple,
  Colors.red,


];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length,
            "Solo se encuentra los colores en un rango de 0 a ${_colorThemes.length -1}");
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
