import 'package:blinkit_ui/constantes/images.dart';
import 'package:blinkit_ui/widgets/login_zomato.dart';
import 'package:flutter/material.dart';

import '../bottomnavigationbaar/bottomnavigation_bar.dart';

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
                      const SizedBox(height: 10),
                      MyButtonLogin(
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context) => const BottomnavigationBar())
                          );
                        }
                      ),
                      const SizedBox(height: 5),
                      Text('Access your saved addresses from Zomato automatically!',style: TextStyle(
                        fontSize: 10,
                        fontFamily:'Poppins-Regular',
                        color: Color(0xFF9C9C9C)
                        ),
                      ),
                      const SizedBox(height: 40),
                      Text('or login with phone number', style: TextStyle(
                        fontFamily: 'Poppins-Regular',
                        fontSize: 15,
                        color: Color(0xFF269237)
                        ),
                      )
                      
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
