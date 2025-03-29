import 'package:exercise_1/models/sign_up_buttons_model.dart';
import 'package:flutter/material.dart';

class SignUpButtonsWidget extends StatelessWidget {
    final SignUpButtonsModel signUpButtonsModel;

  const SignUpButtonsWidget({super.key, required this.signUpButtonsModel});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double containerWidth = screenWidth * 0.9;  
    final double containerHeight = screenHeight * 0.054;
    final double iconSize = screenWidth * 0.05; 
    // final double paddingValue = screenWidth * 0.03;
    final double sizedBoxValue = screenWidth * 0.02;

    return Container(  
      // padding: EdgeInsets.only(top: paddingValue),
              height: containerHeight,
              width: containerWidth,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: signUpButtonsModel.buttonColor,
                borderRadius: BorderRadius.all(Radius.circular(4),),
              ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [ 
            Icon(
              signUpButtonsModel.icon,
              size: iconSize,
              color: theme.scaffoldBackgroundColor,
            ), 
          SizedBox(width: sizedBoxValue),
          Text(
            signUpButtonsModel.text,
            textAlign: TextAlign.center, style: TextStyle(
              color: signUpButtonsModel.textColor,
            ),
          ),
        ],
      ),
    );
  }
}