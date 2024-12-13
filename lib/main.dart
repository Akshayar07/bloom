import 'package:bloom/app/app.dart';
import 'package:bloom/core/app_initializer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'core/services/notification_service.dart';

void main() async {
  await AppInitializer.initialize();
  runApp(const MyApp());
}
