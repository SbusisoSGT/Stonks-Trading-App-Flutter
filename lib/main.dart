import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:hello_world/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: accentColor),
      title: 'Hello World',
      home: const HomePage(),
    );
  }
}
