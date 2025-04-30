
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import 'package:mobile_test/src/application/application.dart';
import 'package:mobile_test/src/application/di/injection_container.dart' as di;

Future<void> main() async {
    await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    di.init();
    Bloc.observer = di.injector<BlocObserver>();
    runApp(const Application());
  }, (error, stackTrace) {
    final logger = di.injector<Logger>();
    logger.f('Main fatal error',error: error,stackTrace: stackTrace);
  });
}
