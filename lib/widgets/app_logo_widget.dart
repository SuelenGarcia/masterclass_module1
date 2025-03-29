import 'package:flutter/material.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double circleSize = screenWidth * 0.12; 
    final double quarterCircleWidth = screenWidth * 0.12;
    final double quarterCircleHeigh = screenHeight * 0.05;
    final double containerWidth = screenWidth * 0.12; 
    final double containerHeight = screenHeight * 0.10;
    final double sizedBoxValue = screenWidth * 0.01; 

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 94, 92, 229),
              ),
            ),
            SizedBox(height: sizedBoxValue),
            Container(
              width: quarterCircleWidth,
              height: quarterCircleHeigh,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 94, 92, 229),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: sizedBoxValue),
        Container(
          width: containerWidth,
          height: containerHeight,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 94, 92, 229),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
        ),
      ],
    );
  }
}
