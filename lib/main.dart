import 'package:exercise_1/login_page.dart';
import 'package:exercise_1/theme/custom_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Money App',
      home: const MyLoginPage(),
      theme: CustomTheme.lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}

