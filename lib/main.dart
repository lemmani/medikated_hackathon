import 'package:flutter/material.dart';
import 'messages/messages_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your Catalogue',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF0F52BA)),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home: const MessagesScreen (),
    );
  }
}

