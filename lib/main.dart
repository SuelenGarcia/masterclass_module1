import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 94, 92, 229),
                      ),
                    ),
                    SizedBox(height: 4),
                    Container(
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 94, 92, 229),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 4),
                Container(
                  width: 26,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 94, 92, 229),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 26),
            Text(
              'Get your Money\n Under Control',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Manage your expenses.',
              style: TextStyle(
                color: Color.fromARGB(255, 124, 123, 128),
                fontSize: 10,
              ),
            ),
            SizedBox(height: 2),
            Text(
              'Seamlessly.',
              style: TextStyle(
                color: Color.fromARGB(255, 124, 123, 128),
                fontSize: 10,
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(top: 6),
              height: 28,
              width: 194,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color.fromARGB(255, 94, 92, 229),
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Text(
                'Sign Up with Email ID',
                style: TextStyle(color: Colors.white, fontSize: 10),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 6),
            Container(
              height: 28,
              width: 194,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/google_icon.png',
                    width: 14,
                    height: 14,
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Sign Up with Google',
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  TextSpan(
                    text: 'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                      decorationThickness: 2,
                    ),
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
