import 'package:blinkit_ui/constantes/images.dart';
import 'package:blinkit_ui/screens/cart/cart_screen.dart';
import 'package:blinkit_ui/screens/categpries/categorie_screen.dart';
import 'package:blinkit_ui/screens/home/home_screen.dart';
import 'package:blinkit_ui/screens/print/print_screen.dart';
import 'package:flutter/material.dart';

class BottomnavigationBar extends StatefulWidget {
  const BottomnavigationBar({super.key});

  @override
  State<BottomnavigationBar> createState() => _BottomnavigationBarState();
}

class _BottomnavigationBarState extends State<BottomnavigationBar> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategorieScreen(),
    PrintScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: ImageHelper.CustomImage(img: 'home 1.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageHelper.CustomImage(img: 'shopping-bag 1.png'),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: ImageHelper.CustomImage(img: 'category 1.png'),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: ImageHelper.CustomImage(img: 'printer 1.png'),
            label: 'Print',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
