import 'package:flutter/material.dart';

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

  ProductText.h1(
    BuildContext context,
    super.data, {
    super.key,
    super.textAlign,
    super.maxLines,
    super.overflow,
    Color? color,
  }) : super(
         style: Theme.of(context).textTheme.displayLarge?.copyWith(color: color),
       );

  ProductText.h2(
    BuildContext context,
    super.data, {
    super.key,
    super.textAlign,
    super.maxLines,
    super.overflow,
    Color? color,
  }) : super(
         style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: color),
       );

  ProductText.h3(
    BuildContext context,
    super.data, {
    super.key,
    super.textAlign,
    super.maxLines,
    super.overflow,
    Color? color,
  }) : super(
         style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: color),
       );

  ProductText.h4(
    BuildContext context,
    super.data, {
    super.key,
    super.textAlign,
    super.maxLines,
    super.overflow,
    Color? color,
  }) : super(
         style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: color),
       );

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
