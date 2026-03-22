import 'package:flutter/material.dart';
import 'package:trip_app/product/design_system/text_style.dart';
import 'package:trip_app/product/init/theme/custom_color_scheme.dart';
import 'package:trip_app/product/init/theme/custom_theme.dart';

final class CustomLightTheme implements CustomTheme {
  const CustomLightTheme();

  ColorScheme get _scheme => CustomColorScheme.lightScheme();

  @override
  ThemeData get themeData {
    final scheme = _scheme;
    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      scaffoldBackgroundColor: scheme.surface,
      textTheme: TextStyles.textTheme.apply(
        bodyColor: scheme.onSurface,
        displayColor: scheme.onSurface,
      ),
      floatingActionButtonTheme: floatingActionButtonThemeData,
      appBarTheme: appBarTheme,
      extensions: const <ThemeExtension<dynamic>>[ProductThemeExtension.light],
    );
  }

  @override
  FloatingActionButtonThemeData get floatingActionButtonThemeData =>
      FloatingActionButtonThemeData(
        backgroundColor: _scheme.primaryContainer,
        foregroundColor: _scheme.onPrimaryContainer,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      );

  @override
  AppBarTheme get appBarTheme => AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    scrolledUnderElevation: 0,
    centerTitle: true,
    foregroundColor: _scheme.onSurface,
  );
}
