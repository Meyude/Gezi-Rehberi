import 'package:flutter/material.dart';

/// Theme-backed text widget. Use named constructors (e.g. [ProductText.h1])
/// for consistent typography; style is taken from [BuildContext] theme.
final class ProductText extends Text {
  const ProductText(
    super.data, {
    super.key,
    super.style,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.maxLines,
    super.textWidthBasis,
    super.textHeightBehavior,
  }) : super();

  /// Display Large (Lora)
  ProductText.h1(
    BuildContext context,
    super.data, {
    super.key,
    super.textAlign,
    super.maxLines,
    super.overflow,
    Color? color,
  }) : super(
         style: Theme.of(context).textTheme.displayLarge?.copyWith(
           color:
               color, // null ise ThemeData'nın standart rengini (onSurface) alır
         ),
       );

  /// Headline Large (Lora)
  ProductText.h2(
    BuildContext context,
    super.data, {
    super.key,
    super.textAlign,
    super.maxLines,
    super.overflow,
    Color? color,
  }) : super(
         style: Theme.of(
           context,
         ).textTheme.headlineLarge?.copyWith(color: color),
       );

  /// Headline Medium (Lora)
  ProductText.h3(
    BuildContext context,
    super.data, {
    super.key,
    super.textAlign,
    super.maxLines,
    super.overflow,
    Color? color,
  }) : super(
         style: Theme.of(
           context,
         ).textTheme.headlineMedium?.copyWith(color: color),
       );

  /// Headline Small (Lora)
  ProductText.h4(
    BuildContext context,
    super.data, {
    super.key,
    super.textAlign,
    super.maxLines,
    super.overflow,
    Color? color,
  }) : super(
         style: Theme.of(
           context,
         ).textTheme.headlineSmall?.copyWith(color: color),
       );

  /// Title Large (Lora)
  ProductText.titleLarge(
    BuildContext context,
    super.data, {
    super.key,
    super.textAlign,
    super.maxLines,
    super.overflow,
    Color? color,
  }) : super(
         style: Theme.of(context).textTheme.titleLarge?.copyWith(color: color),
       );

  /// Title Medium (Lora)
  ProductText.titleMedium(
    BuildContext context,
    super.data, {
    super.key,
    super.textAlign,
    super.maxLines,
    super.overflow,
    Color? color,
  }) : super(
         style: Theme.of(context).textTheme.titleMedium?.copyWith(color: color),
       );

  /// Title Small (Lora)
  ProductText.titleSmall(
    BuildContext context,
    super.data, {
    super.key,
    super.textAlign,
    super.maxLines,
    super.overflow,
    Color? color,
  }) : super(
         style: Theme.of(context).textTheme.titleSmall?.copyWith(color: color),
       );

  /// Body Large (Inter)
  ProductText.bodyLarge(
    BuildContext context,
    super.data, {
    super.key,
    super.textAlign,
    super.maxLines,
    super.overflow,
    Color? color,
  }) : super(
         style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: color),
       );

  /// Body Medium (Inter)
  ProductText.bodyMedium(
    BuildContext context,
    super.data, {
    super.key,
    super.textAlign,
    super.maxLines,
    super.overflow,
    Color? color,
  }) : super(
         style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: color),
       );

  /// Body Small (Inter)
  ProductText.bodySmall(
    BuildContext context,
    super.data, {
    super.key,
    super.textAlign,
    super.maxLines,
    super.overflow,
    Color? color,
  }) : super(
         style: Theme.of(context).textTheme.bodySmall?.copyWith(color: color),
       );

  /// Label Large (Inter)
  ProductText.labelLarge(
    BuildContext context,
    super.data, {
    super.key,
    super.textAlign,
    super.maxLines,
    super.overflow,
    Color? color,
  }) : super(
         style: Theme.of(context).textTheme.labelLarge?.copyWith(color: color),
       );

  /// Label Medium (Inter)
  ProductText.labelMedium(
    BuildContext context,
    super.data, {
    super.key,
    super.textAlign,
    super.maxLines,
    super.overflow,
    Color? color,
  }) : super(
         style: Theme.of(context).textTheme.labelMedium?.copyWith(color: color),
       );

  /// Label Small (Inter)
  ProductText.labelSmall(
    BuildContext context,
    super.data, {
    super.key,
    super.textAlign,
    super.maxLines,
    super.overflow,
    Color? color,
  }) : super(
         style: Theme.of(context).textTheme.labelSmall?.copyWith(color: color),
       );
}
