import 'package:bloom/core/services/notification_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

/// Utility class to handle all app level initialization
class AppInitializer {
  /// Main entry point for all initialization
  static Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    _initializeFirebase;
    if (!kDebugMode) {
      await _initializeNotification();
    }
  }

  ///Initializes firebase service
  static Future<void> _initializeFirebase() async {
    await Firebase.initializeApp();
  }

  ///Initializes notification service
  static Future<void> _initializeNotification() async {
    await NotificationService.instance.initialize();
  }
}
