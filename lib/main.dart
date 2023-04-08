import 'package:flutter/material.dart';
import 'package:quick_notes/screen/about_view.dart';
import 'package:quick_notes/screen/help_view.dart';
import 'package:quick_notes/screen/image_text_view.dart';
import 'package:quick_notes/screen/login_view.dart';
import 'package:quick_notes/screen/main_screen.dart';
import 'package:quick_notes/screen/note_view.dart';
import 'package:quick_notes/screen/profile_view.dart';
import 'package:quick_notes/screen/sing_up_view.dart';
import 'package:quick_notes/screen/splash_view.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        "/mainScreen":(context) => const MainScreen(),
        "/profileView":(context) => const ProfileView(),
        "/imageTextView":(context) => const ImageTextView(),
        "/helpView":(context) => const HelpView(),
        "/aboutView":(context) => const AboutView(),

      },
      home: MainScreen(),
    );
  }
}
