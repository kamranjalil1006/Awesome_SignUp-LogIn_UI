import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_ui/components/action_button.dart';
import 'package:sign_in_ui/components/text_field.dart';
import 'package:sign_in_ui/screens/log_in_screen.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          automaticallyImplyLeading: false,
          title: const Center(child: Text('Sign Up')),
          backgroundColor: Colors.black,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                child: MaterialButton(
                  height: 50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: Colors.white)),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: Image(
                          image: AssetImage('images/google.png'),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text('Sign up with Google')
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              child: Padding(
                 padding:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                child: MaterialButton(
                  height: 50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: Colors.white)),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: Image(
                          image: AssetImage('images/facebook.png'),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text('Sign up with Facebook')
                    ],
                  ),
                ),
              ),
            ),
            const Flexible(
              child: Center(
                child: Text('OR',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
              ),
            ),
            const CustomTextField(
              textInputType: TextInputType.emailAddress,
              hintText: 'Enter Your Email Address',
              preIcon: Icons.email,
            ),
            const CustomTextField(
              textInputType: TextInputType.visiblePassword,
              hintText: 'Create Password',
              preIcon: Icons.lock,
            ),
            const CustomTextField(
              textInputType: TextInputType.visiblePassword,
              hintText: 'Retype Your Password',
              preIcon: Icons.lock,
            ),
            const CustomActionButton(
              buttonText: 'Sign up with Email',
              topWidgetPadding: 0,
              horizontalTextPadding: 80,
            ),
            const Text(
              'By signing up with us, You agree to our\nTerms & Privacy Policy',
              style: TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),
            Flexible(
              child: Column(
                children: [
                  const Divider(
                    color: Colors.white,
                    indent: 40,
                    endIndent: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an Account."),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LogIn(),
                            ),
                          );
                        },
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                              color: Colors.deepPurpleAccent,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
