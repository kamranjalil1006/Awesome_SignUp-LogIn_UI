import 'package:flutter/material.dart';
import 'package:sign_in_ui/screens/log_in_screen.dart';
import 'package:sign_in_ui/screens/sign_up_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(
              child: Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: Text(
                  'My_App',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 3,
                      fontSize: 30),
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Material(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(30),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LogIn(),
                        ),
                      );
                    },
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 20,
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Material(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(30),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                      );
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
