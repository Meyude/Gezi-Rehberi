import 'package:flutter/material.dart';

final class PagePadding extends EdgeInsets {
  const PagePadding.all10() : super.all(_spacingS);
  const PagePadding.all16() : super.all(_spacingM);
  const PagePadding.all20() : super.all(_spacingL);
  const PagePadding.all24() : super.all(_spacingXl);
  const PagePadding.all32() : super.all(_spacingXXl);

  const PagePadding.horizontalSymmetric()
    : super.symmetric(horizontal: _spacingL);

  const PagePadding.horizontalSymmetricMedium()
    : super.symmetric(horizontal: _spacingM);

  const PagePadding.horizontalSymmetricLarge()
    : super.symmetric(horizontal: _spacingXl);

  const PagePadding.verticalSymmetric() : super.symmetric(vertical: _spacingL);

  const PagePadding.verticalSymmetricSmall()
    : super.symmetric(vertical: _spacingXs);

  const PagePadding.pageVertical8() : super.symmetric(vertical: _spacingXs);

  const PagePadding.verticalSymmetricMedium()
    : super.symmetric(vertical: _spacingM);

  const PagePadding.verticalSymmetricLarge()
    : super.symmetric(vertical: _spacingXl);

  const PagePadding.marginBottom8() : super.only(bottom: _spacingXs);
  const PagePadding.marginBottom10() : super.only(bottom: _spacingS);
  const PagePadding.marginBottom12() : super.only(bottom: 12);
  const PagePadding.marginBottom15() : super.only(bottom: 15);
  const PagePadding.marginBottom16() : super.only(bottom: _spacingM);
  const PagePadding.marginBottom20() : super.only(bottom: _spacingL);
  const PagePadding.marginBottom24() : super.only(bottom: _spacingXl);
  const PagePadding.marginBottom32() : super.only(bottom: _spacingXXl);

  const PagePadding.horizontalSymmetricFree(double horizontal)
    : super.symmetric(horizontal: horizontal);

  // ignore: prefer_const_constructors_in_immutables -- runtime vertical
  PagePadding.verticalSymmetricFree(double vertical)
    : super.symmetric(vertical: vertical);

  static const double _spacingXs = 8;
  static const double _spacingS = 10;
  static const double _spacingM = 16;
  static const double _spacingL = 20;
  static const double _spacingXl = 24;
  static const double _spacingXXl = 32;
}
