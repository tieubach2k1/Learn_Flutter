import 'package:flutter/material.dart';
import 'package:skype_chatapp/signup.dart';
import 'package:skype_chatapp/components.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

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
            'Login',
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 15),
            child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.white),
                    ))),
          ),
          Button(
            text: 'Login',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return SignupPage();
              }));
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
                      'New user ? Signup',
                      style: TextStyle(color: Colors.white),
                    ))),
          ),
        ],
      ),
    );
  }
}
