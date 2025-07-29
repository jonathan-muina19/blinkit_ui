import 'package:blinkit_ui/constantes/app_colors.dart';
import 'package:blinkit_ui/constantes/images.dart';
import 'package:blinkit_ui/widgets/catrgorieswidget/category_widget.dart';
import 'package:blinkit_ui/widgets/diwalicategorycard/diwali_category_card.dart';
import 'package:blinkit_ui/widgets/product/product_widget.dart';
import 'package:blinkit_ui/widgets/search/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var grocerykitchen = [
    {"img": "assets/images/legume.png", "text": "Vegetables & \nFruits"},
    {"img": "assets/images/image 46 (1).png", "text": "Atta, Dal & \nRice"},
    {"img": "assets/images/image 46 (2).png", "text": "Oil, Ghee & \nMasala"},
    {"img": "assets/images/image 46 (3).png", "text": "Dairy, Bread & \nMilk"},
    {"img": "assets/images/image 46 (4).png", "text": "Biscuits & \nBakery"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 35),
          Stack(
            children: [
              Container(
                height: 160,
                width: double.infinity,
                color: AppColors.appBarHomeColor,
                child: Column(
                  children: [
                    SizedBox(height: 20),
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
                            fontSize: 12,
                            fontFamily: 'Poppins-Bold',
                          ),
                        ),
                        Text(
                          'Jordan Muina, Kinshasa, RDC(Kin)',
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
                right: 10,
                bottom: 80,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.person_sharp,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 1),
          Stack(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                color: AppColors.appBarHomeColor,
                child: Column(children: [SizedBox(height: 30)]),
              ),
              Column(
                children: [
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      ImageHelper.CustomImage(img: 'image 60.png'),
                      ImageHelper.CustomImage(img: 'image 55.png'),
                      Text(
                        'Mega Diwali Sale',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      ImageHelper.CustomImage(img: 'image 60.png'),
                      ImageHelper.CustomImage(img: 'image 55.png'),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        DiwaliCategoryCard(
                          title: 'Lights, Diyas & Candles',
                          imagePath: 'assets/images/image 50.png',
                        ),
                        DiwaliCategoryCard(
                          title: 'Diwali Gifts',
                          imagePath: 'assets/images/image 51.png',
                        ),
                        DiwaliCategoryCard(
                          title: 'Appliances & Gadgets',
                          imagePath: 'assets/images/image 52.png',
                        ),
                        DiwaliCategoryCard(
                          title: 'Home & Living',
                          imagePath: 'assets/images/image 53.png',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 190,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ProductWidget(
                  title: 'Golden Glass Wooden Lid Candle (Oudh)',
                  imagePath: 'assets/images/image 54.png',
                ),
                ProductWidget(
                  title: 'Royal Gulab JamunBy Bikano',
                  imagePath: 'assets/images/image 57.png',
                ),
                ProductWidget(
                  title: 'Bikaji Bhujia',
                  imagePath: 'assets/images/image 63.png',
                ),
                ProductWidget(
                  title: 'Bikaji Bhujia',
                  imagePath: 'assets/images/image 53.png',
                ),
              ],
            ),
          ),
          Row(
            children: [
              const SizedBox(width: 10),
              Text(
                'Grocery & Kitchen',
                style: TextStyle(fontFamily: 'Poppins-Bold', fontSize: 14),
              ),
            ],
          ),
          CategoryWidget(
              img: grocerykitchen.toString(),
              title: grocerykitchen.toString(),
              article: grocerykitchen
          )
        ],
      ),
    );
  }
}
