import 'package:auth_app/common/widgets/button/basic_app_button.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 100, right: 16, left: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _signup(),
              const SizedBox(height: 50),
              _userNameField(),
              const SizedBox(height: 20),
              _emailField(),
              const SizedBox(height: 20),
              _password(),
              const SizedBox(height: 60),
              _createAccountButton(context),
              const SizedBox(height: 20),
              _signinText(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _signup() {
    return const Text(
      'Sign Up',
      style: TextStyle(
        color: Color(0xff2A4ECA),
        fontWeight: FontWeight.bold,
        fontSize: 32,
      ),
    );
  }

  Widget _userNameField() {
    return const TextField(
      decoration: InputDecoration(hintText: 'Username'),
    );
  }

  Widget _emailField() {
    return const TextField(
      decoration: InputDecoration(hintText: 'Email'),
    );
  }

  Widget _password() {
    return const TextField(
      decoration: InputDecoration(hintText: 'Password'),
    );
  }

  Widget _createAccountButton(BuildContext context) {
    return Builder(builder: (context) {
      return BasicAppButton(title: 'Create Account', onPressed: () {});
    });
  }

  Widget _signinText(BuildContext context) {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Do you have account?',
            style: TextStyle(
              color: Color(0xff3B4054),
              fontWeight: FontWeight.w500,
            ),
          ),
          TextSpan(
            text: ' Sign In',
            style: TextStyle(
              color: Color(0xff3461FD),
              fontWeight: FontWeight.w500,
            ),
            // recognizer: TapGestureRecognizer()
            //     ..onTap = () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => SigninPage(),
            //       )
            //     );
            //   }
          )
        ],
      ),
    );
  }
}
