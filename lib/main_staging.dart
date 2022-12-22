import 'package:book_repair/app/app.dart';
import 'package:book_repair/bootstrap.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  bootstrap(() => const App());
}
