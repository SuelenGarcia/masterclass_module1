import 'package:flutter/material.dart';

class CustomTheme {
  static const Color primaryColor = Color.fromARGB(255, 94, 92, 229);
  static const Color secondaryColor = Colors.white;
  static const Color backgroundColor = Colors.black;
  static const Color textColor = Colors.white;
  static const Color secondaryTextColor = Color.fromARGB(255, 124, 123, 128);

  static TextStyle robotoTextStyle({
    double fontSize = 40,
    FontWeight fontWeight = FontWeight.w600,
  }) {
    return TextStyle(
      fontFamily: 'Roboto',
      color: textColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: -2,
    );
  }

  static TextStyle robotoBodyTextStyle({
    double fontSize = 14,
    Color color = textColor,
  }) {
    return TextStyle(
      fontFamily: 'Roboto',
      color: color,
      fontSize: fontSize,
    );
  }

  static TextStyle underlineRobotoTextStyle({
    double fontSize = 14,
    Color color = textColor,
  }) {
    return TextStyle(
      fontFamily: 'Roboto',
      color: color,
      fontSize: fontSize,
      decoration: TextDecoration.underline,
    );
  }

  static ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      onPrimary: secondaryColor,
      surface: primaryColor,
      onSurface: secondaryColor,
      onTertiary: backgroundColor
    ),
    scaffoldBackgroundColor: backgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      iconTheme: const IconThemeData(color: secondaryColor),
      titleTextStyle: robotoTextStyle(fontSize: 50),
    ),
    textTheme: TextTheme(
      displayLarge: robotoTextStyle(fontSize: 30),
      displayMedium: robotoBodyTextStyle(fontSize: 26),
      displaySmall: robotoBodyTextStyle(fontSize: 22),
      bodyLarge: robotoBodyTextStyle(fontSize: 18,),
      bodyMedium: robotoBodyTextStyle(fontSize: 16, color: secondaryTextColor),
      bodySmall: robotoBodyTextStyle(fontSize: 14,),
      labelSmall: underlineRobotoTextStyle(fontSize: 14,),
      labelMedium: robotoBodyTextStyle(fontSize: 16,),
      labelLarge: robotoBodyTextStyle(fontSize: 14, color: backgroundColor),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: primaryColor,
    ),
  );
}
