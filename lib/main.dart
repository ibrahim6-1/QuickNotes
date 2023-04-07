import 'package:flutter/material.dart';
import 'package:quick_notes/screen/login_view.dart';
import 'package:quick_notes/screen/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quick Notes',

      home: LoginView(),
    );
  }
}
