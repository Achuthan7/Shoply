// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class mycart extends StatefulWidget {
  const mycart({super.key});

  @override
  State<mycart> createState() => _mycartState();
}

class _mycartState extends State<mycart> {
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
          Text(
            'Your cart is Empty!',
            style: TextStyle(
                fontFamily: 'Agbalumo',
                fontSize: 30,
                color: Color.fromARGB(164, 26, 25, 25)),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Image(
            image: AssetImage("images/cart.png"),
            height: 200,
            width: 200,
          )),
        ],
      ),
    );
  }
}
