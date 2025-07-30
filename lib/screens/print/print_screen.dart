import 'package:blinkit_ui/constantes/app_colors.dart';
import 'package:blinkit_ui/constantes/images.dart';
import 'package:flutter/material.dart';

import '../../widgets/search/search_bar.dart';

class PrintScreen extends StatelessWidget {
  const PrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldPrintColor,
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
            const SizedBox(height: 50),
            Text('Print Store', style: TextStyle(
              fontSize: 32,
              fontFamily: 'Poppins-Bold'
              )
            ),
            Text('Blinkit ensures secure prints at every stage', style: TextStyle(
                fontSize: 14,
                color: Color(0xFF9C9C9C),
                fontFamily: 'Poppins-Bold'
            )
            ),
            const SizedBox(height: 30),
            Stack(
              children: [Container(
                height: 163,
                width: 370,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Documents', style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Poppins-Bold'
                          )
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text('✦', style: TextStyle(
                            color: Color(0xFF9C9C9C),
                              fontSize: 14,
                              fontFamily: 'Poppins-Bold'
                            )
                          ),
                          const SizedBox(width: 5),
                          Text('Price starting at rs 3/page', style: TextStyle(
                              color: Color(0xFF9C9C9C),
                              fontSize: 14,
                              fontFamily: 'Poppins-Regular'
                          )
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('✦', style: TextStyle(
                              color: Color(0xFF9C9C9C),
                              fontSize: 14,
                              fontFamily: 'Poppins-Bold'
                          )
                          ),
                          const SizedBox(width: 5),
                          Text('Paper quality: 70 GSM', style: TextStyle(
                              color: Color(0xFF9C9C9C),
                              fontSize: 14,
                              fontFamily: 'Poppins-Regular'
                          )
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('✦', style: TextStyle(
                              color: Color(0xFF9C9C9C),
                              fontSize: 14,
                              fontFamily: 'Poppins-Bold'
                          )
                          ),
                          const SizedBox(width: 5),
                          Text('Single side prints', style: TextStyle(
                              color: Color(0xFF9C9C9C),
                              fontSize: 14,
                              fontFamily: 'Poppins-Regular'
                          )
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 125,
                            decoration: BoxDecoration(
                              color: Color(0xFF27AF34),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(
                              child: Text('Upload Files', style: TextStyle(
                                fontFamily: 'Poppins-Bold',
                                fontSize: 13,
                                color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
                Positioned(
                  right: 20,
                  bottom: 40,
                  child: Image.asset('assets/images/image 62.png'),
                )
            ]
            )
          ],
        ),
      ),
    );
  }
}
