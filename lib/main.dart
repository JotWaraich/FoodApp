import 'package:flutter/material.dart';
import 'package:foodapp/screens/splash_screen.dart';
import 'package:foodapp/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightMode,
      // darkTheme: darkMode,
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      home: const SplashScreen(),
    );
  }
}
