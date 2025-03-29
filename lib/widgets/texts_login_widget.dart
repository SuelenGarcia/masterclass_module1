import 'package:exercise_1/models/app_texts.dart';
import 'package:flutter/material.dart';

class TextsLoginWidget extends StatelessWidget {
  const TextsLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;
    final bodyMediumTheme = textTheme.bodyMedium;
    final displayLargeTheme = textTheme.displayLarge;

    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
        TextSpan(
            text: AppTexts.titleText,
            style: displayLargeTheme,
          ),
          WidgetSpan(child: SizedBox(height: 30,),),
          TextSpan(
            text: AppTexts.subtitleText,
            style: bodyMediumTheme
          ),
          TextSpan(
            text: AppTexts.descriptionText,
            style: bodyMediumTheme,
          ),
        ]
    ),
    );
}}