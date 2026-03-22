import 'dart:ui';

enum Locales {
  tr(Locale('tr', 'TR')),
  en(Locale('en', 'US'));

  const Locales(this.locale);

  final Locale locale;

  static final List<Locale> supportedLocales = [
    Locales.tr.locale,
    Locales.en.locale,
  ];
}
