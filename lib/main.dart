import 'package:flutter/material.dart';
import 'package:quick_notes/screen/login_view.dart';
import 'package:quick_notes/screen/note_view.dart';
import 'package:quick_notes/screen/sing_up_view.dart';
import 'package:quick_notes/screen/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quick Notes',
      routes: {
        "/splashView":(context) => const SplashView(),
        "/loginView":(context) => const LoginView(),
        "/singUpView":(context) => const SignUpView(),
        "/noteView":(context) => const NoteView(),
      },
      home: SplashView(),
    );
  }
}
