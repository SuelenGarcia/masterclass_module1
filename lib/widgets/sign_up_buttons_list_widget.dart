import 'package:exercise_1/models/sign_up_buttons_model.dart';
import 'package:exercise_1/widgets/sign_up_buttons_widget.dart';
import 'package:flutter/material.dart';


class SignUpListWidget extends StatelessWidget {
  final List<SignUpButtonsModel> loginButtons;

  const SignUpListWidget({super.key, required this.loginButtons});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: loginButtons.map((buttonsModel) {
        return Padding(
        padding: const EdgeInsets.only(bottom: 14),
        child: SignUpButtonsWidget(signUpButtonsModel: buttonsModel),
      );}).toList(),
    );
  }
}