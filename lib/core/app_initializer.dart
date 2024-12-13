import 'package:bloom/core/services/notification_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';

class AppInitializer {
  static Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    _initializeFirebase;
    await _initializeNotification();
  }

  static Future<void> _initializeFirebase() async {
    await Firebase.initializeApp();
  }

  static Future<void> _initializeNotification() async {
    await NotificationService.instance.initialize();
  }
}
