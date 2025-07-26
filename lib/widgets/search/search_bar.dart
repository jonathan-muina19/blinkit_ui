import 'package:blinkit_ui/constantes/images.dart';
import 'package:flutter/material.dart';

class SearchBarHome extends StatelessWidget {
  const SearchBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        padding: EdgeInsets.all(10),
        width: 345,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white),
        ),
        child: Row(
          children: [
            Icon(Icons.search),
            const SizedBox(width: 10),
            Text(
              'Search “ice-cream”',
              style: TextStyle(
                fontFamily: 'Poppins-Regular',
                color: Color(0xFF9C9C9C),
              ),
            ),
            const SizedBox(width: 120),
            ImageHelper.CustomImage(img: 'mic 1.png'),
          ],
        ),
      ),
    );
  }
}
