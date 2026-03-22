import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:trip_app/feature/debug/view/theme_preview_page.dart';
import 'package:trip_app/product/init/application_initialize.dart';
import 'package:trip_app/product/init/language/product_localization.dart';
import 'package:trip_app/product/init/theme/theme_manager.dart';

Future<void> main() async {
  await const ApplicationInitialize().make();
  runApp(ProductLocalization(child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RotaSenin',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeManager.lightTheme,
      darkTheme: ThemeManager.darkTheme,
      themeMode: _themeMode,
      home: ThemePreviewPage(
        themeMode: _themeMode,
        onSelectThemeMode: (mode) => setState(() => _themeMode = mode),
      ),
    );
  }
}
