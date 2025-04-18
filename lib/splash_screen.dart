import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Latar belakang hitam
      body: Center(
        child: ClipRect(
          child: Align(
            alignment: Alignment.center,
            widthFactor: 0.8, // Crop kiri-kanan
            heightFactor: 0.8, // Crop atas-bawah
            child: Image.asset(
              'assets/images/Logo.png',
              width: 200,
              height: 200,
            ),
          ),
        ),
      ),
    );
  }
}
