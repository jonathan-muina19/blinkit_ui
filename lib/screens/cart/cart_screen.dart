import 'package:blinkit_ui/constantes/images.dart';
import 'package:blinkit_ui/widgets/product/product_widget.dart';
import 'package:flutter/material.dart';

import '../../constantes/app_colors.dart';
import '../../widgets/search/search_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Stack(
              children: [
                Container(
                  height: 170,
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
                          Image.asset('assets/images/arrow-down-sign-to-navigate 1.png')
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
          ),
          const SizedBox(height: 10,),
          ImageHelper.CustomImage(img: 'shopping-cart (1) 1.png'),
          const SizedBox(height: 10,),
          Text('Reordering will be easy', style: TextStyle(
            fontFamily: 'Poppins-Bold',
            fontSize: 16
            ),
          ),
          Text('Items you order will show up here so you can buy\n them again easily.', style: TextStyle(
              fontFamily: 'Poppins-Medium',
              fontSize: 12
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const SizedBox(width: 15,),
              Text('Bestsellers', style: TextStyle(
                  fontFamily: 'Poppins-SemiBold',
                  fontSize: 16
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              ProductWidget(
                  title: 'Amul Taaza Toned\nFresh Milk',
                  imagePath: 'assets/images/image 45.png',
                price: '₹ 27',
              ),
              ProductWidget(
                title: 'Potato (Aloo)',
                imagePath: 'assets/images/image 44.png',
                price: '₹ 37',
              ),
              ProductWidget(
                title: 'Hybrid Tomato',
                imagePath: 'assets/images/tomato.png',
                price: '₹ 37',
              ),
            ],
          )

        ],
      ),
    );
  }
}
