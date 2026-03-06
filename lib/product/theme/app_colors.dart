import 'package:flutter/material.dart';

final class AppColors {
  AppColors._();

  static const Color _primaryLight = Color(0xFF3A7CA5);
  static const Color _onPrimaryLight = Color(0xFFFFFFFF);
  static const Color _primaryContainerLight = Color(0xFFD1E4F3);
  static const Color _onPrimaryContainerLight = Color(0xFF0A3451);

  static const Color _secondaryLight = Color(0xFFD48B41); // Sıcak kum/hardal
  static const Color _onSecondaryLight = Color(0xFFFFFFFF);
  static const Color _secondaryContainerLight = Color(0xFFFFDCC1);
  static const Color _onSecondaryContainerLight = Color(0xFF4A2800);

  static const Color _tertiaryLight = Color(0xFF658A9F); // Pastel mavi-gri
  static const Color _onTertiaryLight = Color(0xFFFFFFFF);
  static const Color _tertiaryContainerLight = Color(0xFFCFE5F1);
  static const Color _onTertiaryContainerLight = Color(0xFF113244);

  static const Color _errorLight = Color(0xFFBA1A1A);
  static const Color _onErrorLight = Color(0xFFFFFFFF);
  static const Color _errorContainerLight = Color(0xFFFFDAD6);
  static const Color _onErrorContainerLight = Color(0xFF410002);

  static const Color _surfaceLight = Color(0xFFF8FAFC);
  static const Color _onSurfaceLight = Color(0xFF1A1C1E);
  static const Color _surfaceContainerHighestLight = Color(
    0xFFE2E8F0,
  ); // Kart arka planları
  static const Color _onSurfaceVariantLight = Color(0xFF495A73);
  static const Color _outlineLight = Color(0xFF79747E);
  static const Color _outlineVariantLight = Color(0xFFCAC4D0);

  // --- DARK THEME (Loş Mavi, Göz Yormayan Gece Modu) ---
  static const Color _primaryDark = Color(
    0xFF6096BA,
  ); // Konuştuğumuz yumuşak okyanus mavisi
  static const Color _onPrimaryDark = Color(0xFF003258);
  static const Color _primaryContainerDark = Color(0xFF224A6D);
  static const Color _onPrimaryContainerDark = Color(0xFFCFE5F1);

  static const Color _secondaryDark = Color(
    0xFFECA462,
  ); // Parlak kum/günbatımı turuncusu
  static const Color _onSecondaryDark = Color(0xFF4A2800);
  static const Color _secondaryContainerDark = Color(0xFF6B3B03);
  static const Color _onSecondaryContainerDark = Color(0xFFFFDCC1);

  static const Color _tertiaryDark = Color(0xFF8BADC1); // Buz mavisi
  static const Color _onTertiaryDark = Color(0xFF07293A);
  static const Color _tertiaryContainerDark = Color(0xFF2A485B);
  static const Color _onTertiaryContainerDark = Color(0xFFCDE5F7);

  static const Color _errorDark = Color(0xFFD97B73); // Yumuşak kiremit/mercan
  static const Color _onErrorDark = Color(0xFF3B0908);
  static const Color _errorContainerDark = Color(0xFF93000A);
  static const Color _onErrorContainerDark = Color(0xFFFFDAD6);

  static const Color _surfaceDark = Color(
    0xFF1C2331,
  ); // Zifiri siyah değil, derin lacivert/antrasit
  static const Color _onSurfaceDark = Color(0xFFE2E2E9);
  static const Color _surfaceContainerHighestDark = Color(
    0xFF273142,
  ); // Havaya kalkan loş kart yüzeyleri
  static const Color _onSurfaceVariantDark = Color(0xFFC4C6CF);
  static const Color _outlineDark = Color(0xFF8E9199);
  static const Color _outlineVariantDark = Color(
    0xFF495A73,
  ); // İnce ayırıcı çizgiler

  static AppColorsPalette get light => _LightPalette();
  static AppColorsPalette get dark => _DarkPalette();
}

abstract class AppColorsPalette {
  Color get primary;
  Color get onPrimary;
  Color get primaryContainer;
  Color get onPrimaryContainer;
  Color get secondary;
  Color get onSecondary;
  Color get secondaryContainer;
  Color get onSecondaryContainer;
  Color get tertiary;
  Color get onTertiary;
  Color get tertiaryContainer;
  Color get onTertiaryContainer;
  Color get error;
  Color get onError;
  Color get errorContainer;
  Color get onErrorContainer;
  Color get surface;
  Color get onSurface;
  Color get surfaceContainerHighest;
  Color get onSurfaceVariant;
  Color get outline;
  Color get outlineVariant;
}

class _LightPalette extends AppColorsPalette {
  @override
  Color get primary => AppColors._primaryLight;

  @override
  Color get onPrimary => AppColors._onPrimaryLight;

  @override
  Color get primaryContainer => AppColors._primaryContainerLight;

  @override
  Color get onPrimaryContainer => AppColors._onPrimaryContainerLight;

  @override
  Color get secondary => AppColors._secondaryLight;

  @override
  Color get onSecondary => AppColors._onSecondaryLight;

  @override
  Color get secondaryContainer => AppColors._secondaryContainerLight;

  @override
  Color get onSecondaryContainer => AppColors._onSecondaryContainerLight;

  @override
  Color get tertiary => AppColors._tertiaryLight;

  @override
  Color get onTertiary => AppColors._onTertiaryLight;

  @override
  Color get tertiaryContainer => AppColors._tertiaryContainerLight;

  @override
  Color get onTertiaryContainer => AppColors._onTertiaryContainerLight;

  @override
  Color get error => AppColors._errorLight;

  @override
  Color get onError => AppColors._onErrorLight;

  @override
  Color get errorContainer => AppColors._errorContainerLight;

  @override
  Color get onErrorContainer => AppColors._onErrorContainerLight;

  @override
  Color get surface => AppColors._surfaceLight;

  @override
  Color get onSurface => AppColors._onSurfaceLight;

  @override
  Color get surfaceContainerHighest => AppColors._surfaceContainerHighestLight;

  @override
  Color get onSurfaceVariant => AppColors._onSurfaceVariantLight;

  @override
  Color get outline => AppColors._outlineLight;

  @override
  Color get outlineVariant => AppColors._outlineVariantLight;
}

class _DarkPalette extends AppColorsPalette {
  @override
  Color get primary => AppColors._primaryDark;

  @override
  Color get onPrimary => AppColors._onPrimaryDark;

  @override
  Color get primaryContainer => AppColors._primaryContainerDark;

  @override
  Color get onPrimaryContainer => AppColors._onPrimaryContainerDark;

  @override
  Color get secondary => AppColors._secondaryDark;

  @override
  Color get onSecondary => AppColors._onSecondaryDark;

  @override
  Color get secondaryContainer => AppColors._secondaryContainerDark;

  @override
  Color get onSecondaryContainer => AppColors._onSecondaryContainerDark;

  @override
  Color get tertiary => AppColors._tertiaryDark;

  @override
  Color get onTertiary => AppColors._onTertiaryDark;

  @override
  Color get tertiaryContainer => AppColors._tertiaryContainerDark;

  @override
  Color get onTertiaryContainer => AppColors._onTertiaryContainerDark;

  @override
  Color get error => AppColors._errorDark;

  @override
  Color get onError => AppColors._onErrorDark;

  @override
  Color get errorContainer => AppColors._errorContainerDark;

  @override
  Color get onErrorContainer => AppColors._onErrorContainerDark;

  @override
  Color get surface => AppColors._surfaceDark;

  @override
  Color get onSurface => AppColors._onSurfaceDark;

  @override
  Color get surfaceContainerHighest => AppColors._surfaceContainerHighestDark;

  @override
  Color get onSurfaceVariant => AppColors._onSurfaceVariantDark;

  @override
  Color get outline => AppColors._outlineDark;

  @override
  Color get outlineVariant => AppColors._outlineVariantDark;
}
