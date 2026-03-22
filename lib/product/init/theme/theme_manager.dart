import 'package:flutter/material.dart';
import 'package:trip_app/product/init/theme/custom_dark_theme.dart';
import 'package:trip_app/product/init/theme/custom_light_theme.dart';

final class ThemeManager {
  ThemeManager._();

  static const CustomLightTheme _light = CustomLightTheme();
  static const CustomDarkTheme _dark = CustomDarkTheme();

  static ThemeData get lightTheme => _light.themeData;
  static ThemeData get darkTheme => _dark.themeData;
}
