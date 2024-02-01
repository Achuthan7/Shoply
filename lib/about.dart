// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Align(
            child: Text(
              'About Us',
              style: TextStyle(
                  fontFamily: 'Agbalumo',
                  fontSize: 30,
                  color: Color.fromARGB(164, 26, 25, 25)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            color: Color.fromARGB(87, 115, 198, 239),
            margin: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(30, 100)),
            ),
            child: Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(30, 100)),
                border: Border.all(
                  color: Colors.black,
                  width: 4,
                ),
              ),
              child: Center(
                child: Text(
                  'Shoply is an e-commerce app where you can buy things from your fingertips',
                  style: TextStyle(
                    fontFamily: 'Agbalumo',
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
