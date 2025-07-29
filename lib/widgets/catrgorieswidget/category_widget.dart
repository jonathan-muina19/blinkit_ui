import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  var grocerykitchen = [
    {"img": "assets/images/image 46.png", "text": "Vegetables & \nFruits"},
    {"img": "assets/images/image 46 (1).png", "text": "Atta, Dal & \nRice"},
    {"img": "assets/images/image 46 (2).png", "text": "Oil, Ghee & \nMasala"},
    {"img": "assets/images/image 46 (3).png", "text": "Dairy, Bread & \nMilk"},
    {"img": "assets/images/image 46 (4).png", "text": "Biscuits & \nBakery"}
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ListView.builder(itemBuilder: (context, index){
          return  Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 70,
                  width: 71,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFD9EBEB)
                  ),
                  child: Image.asset(grocerykitchen[index]['img'].toString()),
                  ),
              ),
              Expanded(
                child: Text(grocerykitchen[index]['text'].toString(),
                  style: TextStyle(
                  fontSize: 8,
                  fontFamily: 'Poppins-Regular'
                  ),
                ),
              )
            ],
          );
          },
          itemCount: grocerykitchen.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
