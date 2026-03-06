import 'package:trip_app/product/theme/app_color_scheme.dart';
import 'package:trip_app/product/theme/app_text_style.dart';
import 'package:trip_app/product/theme/app_theme_extension.dart';
import 'package:flutter/material.dart';

final class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    final scheme = AppColorScheme.light;
    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      scaffoldBackgroundColor: scheme.surface,
      textTheme: AppTextStyles.textTheme.apply(
        bodyColor: scheme.onSurface,
        displayColor: scheme.onSurface,
      ),
      extensions: <ThemeExtension<dynamic>>[AppThemeExtension.light],
    );
  }

  static ThemeData get darkTheme {
    final scheme = AppColorScheme.dark;
    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      scaffoldBackgroundColor: scheme.surface,
      textTheme: AppTextStyles.textTheme.apply(
        bodyColor: scheme.onSurface,
        displayColor: scheme.onSurface,
      ),
      extensions: <ThemeExtension<dynamic>>[AppThemeExtension.dark],
    );
  }
}
