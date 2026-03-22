import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class TextStyles {
  TextStyles._();

  static TextStyle get displayLarge => GoogleFonts.lora(
    fontSize: 57,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.25,
  );

  static TextStyle get displayMedium =>
      GoogleFonts.lora(fontSize: 45, fontWeight: FontWeight.w400);

  static TextStyle get displaySmall =>
      GoogleFonts.lora(fontSize: 36, fontWeight: FontWeight.w400);

  static TextStyle get headlineLarge =>
      GoogleFonts.lora(fontSize: 32, fontWeight: FontWeight.w400);

  static TextStyle get headlineMedium =>
      GoogleFonts.lora(fontSize: 28, fontWeight: FontWeight.w400);

  static TextStyle get headlineSmall =>
      GoogleFonts.lora(fontSize: 24, fontWeight: FontWeight.w400);

  static TextStyle get titleLarge =>
      GoogleFonts.lora(fontSize: 22, fontWeight: FontWeight.w500);

  static TextStyle get titleMedium => GoogleFonts.lora(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  );

  static TextStyle get titleSmall => GoogleFonts.lora(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
  );

  static TextStyle get bodyLarge => GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
  );

  static TextStyle get bodyMedium => GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  );

  static TextStyle get bodySmall => GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
  );

  static TextStyle get labelLarge => GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
  );

  static TextStyle get labelMedium => GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  );

  static TextStyle get labelSmall => GoogleFonts.inter(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  );

  static TextTheme get textTheme => TextTheme(
    displayLarge: displayLarge,
    displayMedium: displayMedium,
    displaySmall: displaySmall,
    headlineLarge: headlineLarge,
    headlineMedium: headlineMedium,
    headlineSmall: headlineSmall,
    titleLarge: titleLarge,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
    labelLarge: labelLarge,
    labelMedium: labelMedium,
    labelSmall: labelSmall,
  );
}
