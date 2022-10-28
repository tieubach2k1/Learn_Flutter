import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(18, 38, 67, 1),
        title: Text(
          'Chat App',
        ),
      ),
      drawer: Drawer(),
      body: Column(

        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(214, 224, 239, 1),
                  borderRadius: BorderRadius.circular(14)),
              child:const TextField(
                decoration: InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
          ),
          const Text('Groups', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,color:  Color.fromRGBO(18, 38, 67, 1),),)
        ],
      ),
    );
  }
}
