// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 180,
        elevation: 5,
        backgroundColor: Color.fromARGB(142, 115, 198, 239),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(100, 50),
            bottomRight: Radius.elliptical(100, 50),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 20, bottom: 10),
              child: Text(
                'Shoply',
                style: TextStyle(
                  fontFamily: 'Agbalumo',
                  fontSize: 50,
                ),
              ),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          Container(
              padding: EdgeInsets.only(left: 60, top: 150, right: 60),
              width: 200,
              child: TextField(
                cursorHeight: 20,
                decoration: InputDecoration(
                  hintText: 'Username or Email',
                  border: OutlineInputBorder(),
                ),
              )),
          Container(
              padding: EdgeInsets.only(left: 60, top: 15, right: 60),
              width: 200,
              child: TextField(
                cursorHeight: 20,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
              )),
          Container(
            padding: EdgeInsets.only(left: 120, top: 15, right: 120),
            child: FloatingActionButton(
              onPressed: () {},
              child: Text("Login",
                  style: TextStyle(fontFamily: 'Agbalumo', fontSize: 25)),
              backgroundColor: Color.fromARGB(232, 122, 198, 236),
              hoverElevation: 10,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Color.fromARGB(255, 101, 95, 95),
                    style: BorderStyle.solid,
                    width: 2),
                borderRadius:
                    BorderRadius.circular(8), // Adjust border radius as needed
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 180, top: 2, right: 120),
            child: Text('Or',
                style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20)),
          ),
          Container(
            padding: EdgeInsets.only(left: 120, top: 2, right: 120),
            child: FloatingActionButton(
              onPressed: () {},
              child: Text("Signup",
                  style: TextStyle(fontFamily: 'Agbalumo', fontSize: 25)),
              backgroundColor: Color.fromARGB(232, 122, 198, 236),
              hoverElevation: 10,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Color.fromARGB(255, 101, 95, 95),
                    style: BorderStyle.solid,
                    width: 2),
                borderRadius:
                    BorderRadius.circular(8), // Adjust border radius as needed
              ),
            ),
          )
        ],
      ),
    );
  }
}
