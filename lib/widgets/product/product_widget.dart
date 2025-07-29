import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String title;
  final String imagePath;
  final String time;
  final String price;

  const ProductWidget({
    super.key,
    required this.title,
    required this.imagePath,
    this.time = "16 MINS",
    this.price = "₹ 79",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 93,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Image + bouton ADD
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePath,
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.green),
                  ),
                  child: const Text(
                    'ADD',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 6,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 4),

          /// Bloc titre à hauteur fixe
          SizedBox(
            height: 34, // fixe la hauteur pour 2 lignes max
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.w500,
                height: 1.3,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          //const SizedBox(height: 5),

          /// Minute
          Row(
            children: [
              Image.asset('assets/images/timer 4.png'),
              const SizedBox(width: 4),
              Text(
                time,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontFamily: 'Poppins-Regular',
                ),
              ),
            ],
          ),

          const SizedBox(height: 6),

          /// Prix
          Text(
            price,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
