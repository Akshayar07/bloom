import 'package:bloom/app/app.dart';
import 'package:bloom/core/app_initializer.dart';
import 'package:flutter/material.dart';

///Entry point of the application.
///This mtd. ensure all necessary initialization complete before the app launching the app UI

void main() async {
  await AppInitializer.initialize();
  runApp(const MyApp());
}
