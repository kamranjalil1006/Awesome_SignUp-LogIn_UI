import 'package:flutter/material.dart';
import 'package:sign_in_ui/components/action_button.dart';
import 'package:sign_in_ui/screens/sign_up_screen.dart';
import 'package:sign_in_ui/components/text_field.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: const Center(
            child: Text('Log in'),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomTextField(
              textInputType: TextInputType.emailAddress,
              hintText: 'Enter Your Email Address',
              preIcon: Icons.email,
            ),
            const CustomTextField(
              textInputType: TextInputType.visiblePassword,
              hintText: 'Type Your Password',
              preIcon: Icons.lock,
            ),
            const CustomActionButton(
              buttonText: 'Log in',
              topWidgetPadding: 30,
              horizontalTextPadding: 110,
            ),
            const Divider(
              color: Colors.white,
              indent: 40,
              endIndent: 40,
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account."),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                      );
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
