import 'package:blinkit_ui/constantes/images.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ImageHelper.CustomImage(img: 'Blinkit Onboarding Screen.png')
          ],
        ),
      ),
    );
  }
}
