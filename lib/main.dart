import 'package:flutter/material.dart';
import 'package:sign_in_ui/screens/welcome_screen.dart';

void main() => runApp(const SignInUI());

class SignInUI extends StatelessWidget {
  const SignInUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const WelcomeScreen(),
    );
  }
}
