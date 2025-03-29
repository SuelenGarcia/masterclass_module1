import 'package:exercise_1/models/sign_up_buttons_model.dart';
import 'package:exercise_1/widgets/app_logo_widget.dart';
import 'package:exercise_1/widgets/sign_up_buttons_list_widget.dart';
import 'package:exercise_1/widgets/texts_login_widget.dart';
import 'package:flutter/material.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
  final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppLogoWidget(),
            SizedBox(height: 26),
            TextsLoginWidget(),
            SizedBox(height: 40),
            SignUpListWidget(
              loginButtons: [
                SignUpButtonsModel(
                  text: 'Sign Up with Email ID',
                  buttonColor: theme.primaryColor,
                  textColor: theme.colorScheme.onPrimary,
                ),
                SignUpButtonsModel(
                  icon: Icons.g_mobiledata,
                  text: 'Sign Up with Google',
                  buttonColor: theme.colorScheme.onPrimary,
                  textColor: theme.scaffoldBackgroundColor,
                ),
              ],
            ),
            SizedBox(height: 40),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Already have an account? ',
                    style: theme.textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: 'Sign In',
                    style: theme.textTheme.labelSmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}