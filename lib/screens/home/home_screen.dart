import 'package:blinkit_ui/constantes/app_colors.dart';
import 'package:blinkit_ui/widgets/search/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          SizedBox(
            height: 40
          ),
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: AppColors.appBarHomeColor,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        Text('Blinkit in', style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Poppins-Bold'
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        Text('16 minutes', style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Poppins-Bold'
                        ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        Text('HOME -', style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Poppins-Bold'
                        ),
                        ),
                        Text(' Sujal Dave, Ratanada, Jodhpur (Raj)', style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins-Regular'
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    SearchBarHome()
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 100,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person, color: Colors.white,size: 20,),
                ),
              ),
            ],
          ),

        ],
      )
    );
  }
}
