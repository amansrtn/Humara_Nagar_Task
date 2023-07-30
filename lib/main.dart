import 'package:assignment/Pages/LoginPage.dart';
import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(backgroundColor: Color(0xFFFFFFF0), elevation: 0),
        scaffoldBackgroundColor: const Color(0xFFFFFFF0),
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
