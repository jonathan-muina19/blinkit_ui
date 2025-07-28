import 'package:flutter/material.dart';

class DiwaliCategoryCard extends StatelessWidget {
  
  final String title;
  final String imagePath;
  
  const DiwaliCategoryCard({
    super.key, 
    required this.title,
    required this.imagePath
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 93,
      margin: const EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
        color: Color(0xFFEAD3D3),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              fontFamily: 'Poppins-SemiBold'
            ),
            textAlign: TextAlign.center,
          ),
          Expanded(
              child: Image.asset(imagePath, fit: BoxFit.contain,)
          ),
        ],
      ),
    );
  }
}
