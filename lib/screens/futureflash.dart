import 'package:flutter/material.dart';

class FlashScreen extends StatelessWidget {
  const FlashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            'FutureFit',
            style: TextStyle(
              fontSize: 48,
              color: Color.fromARGB(255, 0, 120, 150),
            ),
          ),
        ),
      ),
    );
  }
}