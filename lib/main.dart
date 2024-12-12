import 'package:flutter/material.dart';
import 'splash/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your Catalogue',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0F52BA)),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      // home: const SplashScreen  (),
      home: const SplashScreen (),
    );
  }
}

