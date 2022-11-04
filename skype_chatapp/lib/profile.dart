import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(18, 38, 67, 1),
        title: const Text(
          'Profile Page',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding:  EdgeInsets.all(29.0),
            child: CircleAvatar(
              backgroundColor: Color.fromRGBO(18, 38, 67, 1),
              radius: 63,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(214, 224, 239, 1),
                  borderRadius: BorderRadius.circular(11)),
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Text('Name: Codectionary', style: TextStyle(color: Color.fromRGBO(18, 38, 67, 0.82), fontWeight: FontWeight.w300),),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(214, 224, 239, 1),
                  borderRadius: BorderRadius.circular(11)),
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Text('Email: Codectionary@gmail.com', style: TextStyle(color: Color.fromRGBO(18, 38, 67, 0.82), fontWeight: FontWeight.w300),),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
