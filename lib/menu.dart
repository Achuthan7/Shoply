// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Text(
            "Welcome to drawer",
            style: TextStyle(fontFamily: 'Agbalumo'),
          )
        ],
      ),
    );
  }
}
