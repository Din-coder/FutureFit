import 'package:flutter/material.dart';
import 'package:futurefit/screens/AfterLogin/homescreen.dart';
import 'package:futurefit/screens/futureflash.dart';
import 'package:futurefit/screens/login.dart';
import 'package:futurefit/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FutureFit',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

