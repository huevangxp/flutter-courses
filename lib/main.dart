import 'package:courses/screens/dashboard_screen.dart';
import 'package:courses/screens/favorites_screen.dart';
import 'package:courses/screens/home_screen.dart';
import 'package:courses/screens/profile_screen.dart';
import 'package:courses/screens/settings_screen.dart';
import 'package:courses/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hmong Notepad',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      routes: {
          '/home': (context) => HomeScreen(),
          '/dashboard': (context) => DashboardScreen(),
          '/favorites': (context) => FavoritesScreen(),
          '/settings': (context) => SettingsScreen(),
          '/profile': (context) => ProfileScreen(),
        },
    );
  }
}
