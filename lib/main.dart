import 'package:flutter/material.dart';
import 'package:watch_tv/screens/countries_screen.dart';
import 'package:watch_tv/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
