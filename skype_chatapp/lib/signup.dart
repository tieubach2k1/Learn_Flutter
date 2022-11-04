import 'package:flutter/material.dart';
import 'package:skype_chatapp/components.dart';
import 'package:skype_chatapp/complete.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(18, 38, 67, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
              child: Text(
            'Signup',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 48),
          )),
          const SizedBox(
            height: 74,
          ),
          const Textfield(
            hintText: 'Enter Your Email',
            icon: Icons.email,
          ),
          const Textfield(
            hintText: 'Enter Password',
            icon: Icons.key,
          ),
          const Textfield(
            hintText: 'Confirm Password',
            icon: Icons.key,
          ),
          const SizedBox(
            height: 20,
          ),
          Button(
            text: 'Signup',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CompleteProfile()));
            },
          ),
          const SizedBox(
            height: 65,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 15),
            child: Align(
                alignment: Alignment.center,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Already have an account ? Login',
                      style: TextStyle(color: Colors.white),
                    ))),
          ),
        ],
      ),
    );
  }
}
