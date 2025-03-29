import 'package:flutter/widgets.dart';

class SignUpButtonsModel {
 final String text;
 final Color textColor;
 final Color buttonColor;
 final IconData? icon; 

const SignUpButtonsModel({required this.text,
    required this.buttonColor,
    required this.textColor,
    this.icon,});
}