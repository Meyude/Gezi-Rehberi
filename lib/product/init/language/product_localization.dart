import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:trip_app/product/utility/constant/enum/locales.dart';

final class ProductLocalization extends EasyLocalization {
  ProductLocalization({super.key, required super.child})
    : super(
        supportedLocales: Locales.supportedLocales,
        path: _translationPath,
        useOnlyLangCode: true,
      );

  static const String _translationPath = 'asset/translations';

  static Future<void> updateLanguage(
    BuildContext context,
    Locale locale,
  ) => context.setLocale(locale);
}
