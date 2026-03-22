import 'package:flutter/material.dart';

final class CustomColorScheme {
  CustomColorScheme._();

  // --- Light palette ---
  static const Color _primaryLight = Color(0xFF3A7CA5);
  static const Color _onPrimaryLight = Color(0xFFFFFFFF);
  static const Color _primaryContainerLight = Color(0xFFD1E4F3);
  static const Color _onPrimaryContainerLight = Color(0xFF0A3451);
  static const Color _secondaryLight = Color(0xFFD48B41);
  static const Color _onSecondaryLight = Color(0xFFFFFFFF);
  static const Color _secondaryContainerLight = Color(0xFFFFDCC1);
  static const Color _onSecondaryContainerLight = Color(0xFF4A2800);
  static const Color _tertiaryLight = Color(0xFF658A9F);
  static const Color _onTertiaryLight = Color(0xFFFFFFFF);
  static const Color _tertiaryContainerLight = Color(0xFFCFE5F1);
  static const Color _onTertiaryContainerLight = Color(0xFF113244);
  static const Color _errorLight = Color(0xFFBA1A1A);
  static const Color _onErrorLight = Color(0xFFFFFFFF);
  static const Color _errorContainerLight = Color(0xFFFFDAD6);
  static const Color _onErrorContainerLight = Color(0xFF410002);
  static const Color _surfaceLight = Color(0xFFF8FAFC);
  static const Color _onSurfaceLight = Color(0xFF1A1C1E);
  static const Color _surfaceContainerHighestLight = Color(0xFFE2E8F0);
  static const Color _onSurfaceVariantLight = Color(0xFF495A73);
  static const Color _outlineLight = Color(0xFF79747E);
  static const Color _outlineVariantLight = Color(0xFFCAC4D0);

  // --- Dark palette ---
  static const Color _primaryDark = Color(0xFF6096BA);
  static const Color _onPrimaryDark = Color(0xFF003258);
  static const Color _primaryContainerDark = Color(0xFF224A6D);
  static const Color _onPrimaryContainerDark = Color(0xFFCFE5F1);
  static const Color _secondaryDark = Color(0xFFECA462);
  static const Color _onSecondaryDark = Color(0xFF4A2800);
  static const Color _secondaryContainerDark = Color(0xFF6B3B03);
  static const Color _onSecondaryContainerDark = Color(0xFFFFDCC1);
  static const Color _tertiaryDark = Color(0xFF8BADC1);
  static const Color _onTertiaryDark = Color(0xFF07293A);
  static const Color _tertiaryContainerDark = Color(0xFF2A485B);
  static const Color _onTertiaryContainerDark = Color(0xFFCDE5F7);
  static const Color _errorDark = Color(0xFFD97B73);
  static const Color _onErrorDark = Color(0xFF3B0908);
  static const Color _errorContainerDark = Color(0xFF93000A);
  static const Color _onErrorContainerDark = Color(0xFFFFDAD6);
  static const Color _surfaceDark = Color(0xFF1C2331);
  static const Color _onSurfaceDark = Color(0xFFE2E2E9);
  static const Color _surfaceContainerHighestDark = Color(0xFF273142);
  static const Color _onSurfaceVariantDark = Color(0xFFC4C6CF);
  static const Color _outlineDark = Color(0xFF8E9199);
  static const Color _outlineVariantDark = Color(0xFF495A73);

  static ColorScheme lightScheme() => const ColorScheme(
    brightness: Brightness.light,
    primary: _primaryLight,
    onPrimary: _onPrimaryLight,
    primaryContainer: _primaryContainerLight,
    onPrimaryContainer: _onPrimaryContainerLight,
    secondary: _secondaryLight,
    onSecondary: _onSecondaryLight,
    secondaryContainer: _secondaryContainerLight,
    onSecondaryContainer: _onSecondaryContainerLight,
    tertiary: _tertiaryLight,
    onTertiary: _onTertiaryLight,
    tertiaryContainer: _tertiaryContainerLight,
    onTertiaryContainer: _onTertiaryContainerLight,
    error: _errorLight,
    onError: _onErrorLight,
    errorContainer: _errorContainerLight,
    onErrorContainer: _onErrorContainerLight,
    surface: _surfaceLight,
    onSurface: _onSurfaceLight,
    surfaceContainerHighest: _surfaceContainerHighestLight,
    onSurfaceVariant: _onSurfaceVariantLight,
    outline: _outlineLight,
    outlineVariant: _outlineVariantLight,
  );

  static ColorScheme darkScheme() => const ColorScheme(
    brightness: Brightness.dark,
    primary: _primaryDark,
    onPrimary: _onPrimaryDark,
    primaryContainer: _primaryContainerDark,
    onPrimaryContainer: _onPrimaryContainerDark,
    secondary: _secondaryDark,
    onSecondary: _onSecondaryDark,
    secondaryContainer: _secondaryContainerDark,
    onSecondaryContainer: _onSecondaryContainerDark,
    tertiary: _tertiaryDark,
    onTertiary: _onTertiaryDark,
    tertiaryContainer: _tertiaryContainerDark,
    onTertiaryContainer: _onTertiaryContainerDark,
    error: _errorDark,
    onError: _onErrorDark,
    errorContainer: _errorContainerDark,
    onErrorContainer: _onErrorContainerDark,
    surface: _surfaceDark,
    onSurface: _onSurfaceDark,
    surfaceContainerHighest: _surfaceContainerHighestDark,
    onSurfaceVariant: _onSurfaceVariantDark,
    outline: _outlineDark,
    outlineVariant: _outlineVariantDark,
  );
}

final class ProductThemeExtension extends ThemeExtension<ProductThemeExtension> {
  const ProductThemeExtension({
    required this.brandPrimary,
    required this.brandSecondary,
    required this.success,
    required this.warning,
    required this.info,
    required this.cardBackground,
    required this.divider,
    required this.shimmerBase,
    required this.shimmerHighlight,
  });

  final Color brandPrimary;
  final Color brandSecondary;
  final Color success;
  final Color warning;
  final Color info;
  final Color cardBackground;
  final Color divider;
  final Color shimmerBase;
  final Color shimmerHighlight;

  static const ProductThemeExtension light = ProductThemeExtension(
    brandPrimary: Color(0xFF3A7CA5),
    brandSecondary: Color(0xFFD48B41),
    success: Color(0xFF658A9F),
    warning: Color(0xFFFF9800),
    info: Color(0xFFD48B41),
    cardBackground: Color(0xFFE2E8F0),
    divider: Color(0xFFCAC4D0),
    shimmerBase: Color(0xFFE0E0E0),
    shimmerHighlight: Color(0xFFF5F5F5),
  );

  static const ProductThemeExtension dark = ProductThemeExtension(
    brandPrimary: Color(0xFF6096BA),
    brandSecondary: Color(0xFFECA462),
    success: Color(0xFF8BADC1),
    warning: Color(0xFFFFB74D),
    info: Color(0xFFECA462),
    cardBackground: Color(0xFF273142),
    divider: Color(0xFF495A73),
    shimmerBase: Color(0xFF424242),
    shimmerHighlight: Color(0xFF616161),
  );

  @override
  ProductThemeExtension copyWith({
    Color? brandPrimary,
    Color? brandSecondary,
    Color? success,
    Color? warning,
    Color? info,
    Color? cardBackground,
    Color? divider,
    Color? shimmerBase,
    Color? shimmerHighlight,
  }) => ProductThemeExtension(
    brandPrimary: brandPrimary ?? this.brandPrimary,
    brandSecondary: brandSecondary ?? this.brandSecondary,
    success: success ?? this.success,
    warning: warning ?? this.warning,
    info: info ?? this.info,
    cardBackground: cardBackground ?? this.cardBackground,
    divider: divider ?? this.divider,
    shimmerBase: shimmerBase ?? this.shimmerBase,
    shimmerHighlight: shimmerHighlight ?? this.shimmerHighlight,
  );

  @override
  ProductThemeExtension lerp(ProductThemeExtension? other, double t) {
    if (other == null) return this;
    return ProductThemeExtension(
      brandPrimary: Color.lerp(brandPrimary, other.brandPrimary, t)!,
      brandSecondary: Color.lerp(brandSecondary, other.brandSecondary, t)!,
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      info: Color.lerp(info, other.info, t)!,
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t)!,
      divider: Color.lerp(divider, other.divider, t)!,
      shimmerBase: Color.lerp(shimmerBase, other.shimmerBase, t)!,
      shimmerHighlight: Color.lerp(shimmerHighlight, other.shimmerHighlight, t)!,
    );
  }
}

extension ProductThemeContext on BuildContext {
  ProductThemeExtension get productTheme =>
      Theme.of(this).extension<ProductThemeExtension>()!;
}

extension TripThemeContext on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
