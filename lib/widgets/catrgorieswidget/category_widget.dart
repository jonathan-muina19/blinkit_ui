import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {

  final String img;
  final String title;
  final List<Map<String, dynamic>> article;

  CategoryWidget({super.key,
    required this.img,
    required this.title,
    required this.article
  });


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 70,
                    width: 71,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFD9EBEB),
                    ),
                    child: Image.asset(article[index]['img'].toString()),
                  ),
                ),
                Expanded(
                  child: Text(
                    article[index]['text'].toString(),
                    style: TextStyle(
                      fontSize: 9,
                      fontFamily: 'Poppins-Regular',
                    ),
                  ),
                ),
              ],
            );
          },
          itemCount:article.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
