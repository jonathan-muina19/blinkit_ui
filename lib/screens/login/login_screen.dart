import 'package:blinkit_ui/constantes/images.dart';
import 'package:blinkit_ui/widgets/login_zomato.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ImageHelper.CustomImage(img: 'Blinkit Onboarding Screen.png'),
            //const SizedBox(height: 10),
            ImageHelper.CustomImage(img: 'image 10.png'),
            Text('India’s last minute app', style: TextStyle(
              color: Colors.black,
              fontFamily: 'Poppins-Bold',
              fontSize: 20
              ),
            ),
            const SizedBox(height: 10,),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                width: 330,
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF)
                ),
                child: Center(
                  child: Column(
                    children: [
                      Text('Sujal', style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins-Regular'
                        ),
                      ),
                      Text('78277XXXX', style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins-Bold',
                        color: Color(0xFF9C9C9C)
                        ),
                      ),
                      MyButtonLogin()
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
