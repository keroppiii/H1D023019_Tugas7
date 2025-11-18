import 'package:flutter/material.dart';
import 'package:h1d023019_tugas7/pages/login_page.dart';
import 'package:h1d023019_tugas7/pages/home_page.dart';
import 'package:h1d023019_tugas7/pages/profile_page.dart';
import 'package:h1d023019_tugas7/pages/settings_page.dart';
import 'package:h1d023019_tugas7/pages/about_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas 7',

      initialRoute: '/login',

      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/settings': (context) => const SettingsPage(),
        '/about': (context) => const AboutPage(),
      },
    );
  }
}
