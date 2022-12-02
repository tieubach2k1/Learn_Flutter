import 'package:flutter/material.dart';
import 'package:skype_chatapp/chatPage.dart';
import 'package:skype_chatapp/profile.dart';

class Dashboard extends StatelessWidget {
  const  Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(18, 38, 67, 1),
        title: const Text(
          'Chat App',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ProfilePage();
                }));
              },
              child: const CircleAvatar(
                radius: 24,
                backgroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(18, 38, 67, 1),
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      drawer: const Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(214, 224, 239, 1),
                  borderRadius: BorderRadius.circular(14)),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Groups',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(18, 38, 67, 1),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ListView.builder(itemBuilder: (context, i) {
              return GroupCard();
            }),
          ))
        ],
      ),
    );
  }
}

class GroupCard extends StatelessWidget {
  const GroupCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ChatPage();
            }));
          },
          child: Container(
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(214, 224, 239, 1),
                borderRadius: BorderRadius.circular(11)),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const CircleAvatar(
                  radius: 24,
                  backgroundColor: Color.fromRGBO(18, 38, 67, 1),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Flutter Group',
                      style: TextStyle(
                          color: Color.fromRGBO(18, 38, 67, 1),
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Hi,......',
                      style: TextStyle(
                          color: Color.fromRGBO(18, 38, 67, 1),
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const Spacer(),
                const Text(
                  '10:00',
                  style: TextStyle(
                      color: Color.fromRGBO(18, 38, 67, 1),
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
