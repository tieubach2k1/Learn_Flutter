import 'package:flutter/material.dart';

import 'package:skype_chatapp/components.dart';

import 'package:skype_chatapp/dashboard.dart';

class CompleteProfile extends StatelessWidget {
  const CompleteProfile({Key? key}) : super(key: key);

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
                'Complete',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 48),
              )),
          SizedBox(
            height: 74,
          ),
          Textfield(
            hintText: 'Enter Your Name',
            icon: Icons.title,
          ),
          Textfield(
            hintText: 'Enter Your Number',
            icon: Icons.phone,
          ),
          Textfield(
            hintText: 'Select Your Photo',
            icon: Icons.person,
          ),
          SizedBox(
            height: 20,
          ),
          Button(
            text: 'Complete',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Dashboard()));
            },
          ),
          const SizedBox(
            height: 65,
          ),
        ],
      ),
    );
  }
}