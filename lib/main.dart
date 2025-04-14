import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(SimpleBooklistApp());
}

class SimpleBooklistApp extends StatelessWidget {
  const SimpleBooklistApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}