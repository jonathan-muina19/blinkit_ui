import 'package:blinkit_ui/constantes/app_colors.dart';
import 'package:blinkit_ui/constantes/images.dart';
import 'package:flutter/material.dart';

class MyButtonLogin extends StatelessWidget {
  final VoidCallback? onPressed;
  const MyButtonLogin({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ,
      child: Container(
        padding: EdgeInsets.all(18),
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login with  ', style: TextStyle(
              fontSize: 14,
              fontFamily: 'Poppins-Bold',
              color: Colors.white
              ),
            ),
            Image.asset('assets/images/zomato.png', width: 73)
          ],
        ),
      ),
    );
  }
}
