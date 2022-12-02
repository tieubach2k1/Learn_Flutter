import 'package:flutter/material.dart';
import 'package:skype_chatapp/Auth/auth.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var data;

  @override
  void initState() {
    Auth().getInfo().then((value){
      data = value;
      if(mounted) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(18, 38, 67, 1),
        title: const Text(
          'Profile Page',
        ),
      ),
      body: data != null ? Column(
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
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:  const EdgeInsets.all(8.0),
                    child: Text('Name: ${data['name']}', style: const TextStyle(color: Color.fromRGBO(18, 38, 67, 0.82), fontWeight: FontWeight.w300),),
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
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:  const EdgeInsets.all(8.0),
                    child: Text('Email: ${data['email']}', style: const TextStyle(color: Color.fromRGBO(18, 38, 67, 0.82), fontWeight: FontWeight.w300),),
                  )),
            ),
          ),
        ],
      ): Center(child: CircularProgressIndicator(color: Colors.indigo,),),
    );
  }
}
