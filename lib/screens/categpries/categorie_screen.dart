import 'package:flutter/material.dart';

import '../../constantes/app_colors.dart';
import '../../widgets/search/search_bar.dart';

class CategorieScreen extends StatelessWidget {
  CategorieScreen({super.key});

  var grocerykitchen = [
    {"img": "assets/images/legume.png", "text": "Vegetables & \nFruits"},
    {"img": "assets/images/image 46 (1).png", "text": "Atta, Dal & \nRice"},
    {"img": "assets/images/image 46 (2).png", "text": "Oil, Ghee & \nMasala"},
    {"img": "assets/images/image 46 (3).png", "text": "Dairy, Bread & \nMilk"},
    {"img": "assets/images/image 46 (4).png", "text": "Biscuits & \nBakery"},
  ];
  var secondgrocery = [
    {"img": "image 21.png", "text": "Dry Fruits &\n Cereals"},
    {"img": "image 22.png", "text": "Kitchen &\n Appliances"},
    {"img": "image 23.png", "text": "Tea & \nCoffees"},
    {"img": "image 24.png", "text": "Ice Creams & \nmuch more"},
    {"img": "image 25.png", "text": "Noodles & \nPacket Food"},
  ];
  var snacksanddrinks = [
    {"img": "image 31.png", "text": "Chips &\n Namkeens"},
    {"img": "image 32.png", "text": "Sweets & \nChocalates"},
    {"img": "image 33.png", "text": "Drinks & \nJuices"},
    {"img": "image 34.png", "text": "Sauces &\n Spreads"},
    {"img": "image 35.png", "text": "Beauty &\n Cosmetics"},
  ];
  var hosuehold = [
    {"img": "image 36.png"},
    {"img": "image 37.png"},
    {"img": "image 38.png"},
    {"img": "image 39.png"},
    {"img": "image 40.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 160,
                  width: double.infinity,
                  color: AppColors.scaffoldBackground,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Text(
                            'Blinkit in',
                            style: TextStyle(
                              color: Colors.black,
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
                              color: Colors.black,
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
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins-Bold',
                            ),
                          ),
                          Text(
                            'Jordan Muina, Kinshasa, RDC(Kin)',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Poppins-Regular',
                            ),
                          ),
                          const SizedBox(width: 5),
                          Image.asset(
                            'assets/images/arrow-down-sign-to-navigate 1.png',
                          ),
                        ],
                      ),
                      const SizedBox(height: 14),
                      SearchBarHome(),
                    ],
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 100,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person_sharp, color: Colors.black, size: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 15),
                Text('Grocery & Kitchen', style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins-Bold'
                  ),
                )
              ],
            ),
          ],
        ),
      ),

    );
  }
}
