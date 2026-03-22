import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final class ApplicationInitialize {
  const ApplicationInitialize();

  Future<void> make() async {
    WidgetsFlutterBinding.ensureInitialized();
    await runZonedGuarded<Future<void>>(_initialize, _onZoneError);
  }

  Future<void> _initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    EasyLocalization.logger.enableLevels = [LevelMessages.error];
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    FlutterError.onError = (details) {
      FlutterError.presentError(details);
      debugPrint(details.exceptionAsString());
    };
  }

  void _onZoneError(Object error, StackTrace stack) {
    debugPrint('Zone error: $error');
    debugPrintStack(stackTrace: stack);
  }
}
