import 'package:blinkit_ui/constantes/app_colors.dart';
import 'package:blinkit_ui/constantes/images.dart';
import 'package:blinkit_ui/widgets/diwalicategorycard/diwali_category_card.dart';
import 'package:blinkit_ui/widgets/search/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: AppColors.appBarHomeColor,
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        Text(
                          'Blinkit in',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Poppins-Bold',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        Text(
                          '16 minutes',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Poppins-Bold',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        Text(
                          'HOME -',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Poppins-Bold',
                          ),
                        ),
                        Text(
                          ' Sujal Dave, Ratanada, Jodhpur (Raj)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins-Regular',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    SearchBarHome(),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 100,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person, color: Colors.white, size: 20),
                ),
              ),
            ],
          ),
          const SizedBox(height: 1),
          Stack(
            children: [
              Container(
                height: 220,
                width: double.infinity,
                color: AppColors.appBarHomeColor,
                child: Column(children: [SizedBox(height: 30)]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        ImageHelper.CustomImage(img: 'image 60.png'),
                        ImageHelper.CustomImage(img: 'image 55.png'),
                        Text('Mega Diwali Sale', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20
                          ),
                        ),
                        ImageHelper.CustomImage(img: 'image 60.png'),
                        ImageHelper.CustomImage(img: 'image 55.png'),
                      ],
                    ),
                    SizedBox(
                      height: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          DiwaliCategoryCard(
                              title: 'Lights, Diyas & Candles',
                              imagePath: 'assets/images/image 50.png'
                          ),
                          DiwaliCategoryCard(
                              title: 'Diwali Gifts',
                              imagePath: 'assets/images/image 51.png'
                          ),
                          DiwaliCategoryCard(
                              title: 'Appliances & Gadgets',
                              imagePath: 'assets/images/image 52.png'
                          ),
                          DiwaliCategoryCard(
                              title: 'Home & Living',
                              imagePath: 'assets/images/image 53.png'
                          ),


                        ],
                      ),
                    )

                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
