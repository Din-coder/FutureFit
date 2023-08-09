import 'package:flutter/material.dart';

class FlashScreen extends StatelessWidget {
  const FlashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'FutureFit',
          style: TextStyle(
            fontSize: 48,
            color: Color.fromARGB(255, 0, 120, 150),
          ),
        ),
      ),
    );
  }
}