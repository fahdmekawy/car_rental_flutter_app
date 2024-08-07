import 'package:car_rental_app/core/di/dependency_injection.dart';
import 'package:car_rental_app/features/app/presentation/pages/app_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../../firebase_options.dart';
import 'dart:async';
import 'dart:developer';

class AppManager {
  AppManager._();

  static final instance = AppManager._();

  void run() {
    runZonedGuarded(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        initInjection();
        await Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform);
        runApp(
          const AppPage(),
        );
      },
      (error, stackTrace) {
        log(error.toString());
      },
    );
  }
}
