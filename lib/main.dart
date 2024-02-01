// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, library_private_types_in_public_api, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shoply/Login.dart';
import 'about.dart';
import 'menu.dart';
import 'cart.dart';
import 'contact.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController tx = TextEditingController(text: 'Search');

  @override
  void initState() {
    super.initState();
    tx = TextEditingController(text: 'Search');
  }

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
        leading: Builder(builder: (context) {
          return IconButton(
            alignment: Alignment.centerRight,
            icon: Icon(Icons.sort_rounded),
            iconSize: 50,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 45, bottom: 10),
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(100, 50),
                      bottomRight: Radius.elliptical(100, 50),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("images/gif.gif"),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text(
                'Cart',
                style: TextStyle(fontFamily: 'Agbalumo', fontSize: 19),
              ),
              leading: Icon(Icons.shopping_cart),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => mycart(),
                ));
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                'Login',
                style: TextStyle(fontFamily: 'Agbalumo', fontSize: 19),
              ),
              leading: Icon(Icons.login_rounded),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Loginpage(),
                ));
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                'About us',
                style: TextStyle(fontFamily: 'Agbalumo', fontSize: 19),
              ),
              leading: Icon(Icons.book),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AboutPage(),
                ));
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                'Contact us',
                style: TextStyle(fontFamily: 'Agbalumo', fontSize: 19),
              ),
              leading: Icon(Icons.contact_page_rounded),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Contactus(),
                ));
              },
            ),
            Divider(),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsets.all(40),
            child: TextField(
              controller: tx,
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(
                  Icons.search_rounded,
                  size: 30,
                  color: Color.fromARGB(174, 0, 0, 0),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 20),
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear_rounded),
                  onPressed: () {
                    setState(() {
                      tx.clear();
                    });
                  },
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color.fromARGB(82, 67, 63, 63),
                      width: 2,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('images/wf.jpg'),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color.fromARGB(82, 67, 63, 63),
                      width: 2,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('images/ch.png'),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color.fromARGB(82, 67, 63, 63),
                      width: 2,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('images/shirt.jpg'),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color.fromARGB(82, 67, 63, 63),
                      width: 2,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('images/tshirt.jpg'),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color.fromARGB(82, 67, 63, 63),
                      width: 2,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('images/shoe.jpg'),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color.fromARGB(82, 67, 63, 63),
                      width: 2,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('images/pant.jpg'),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Divider(),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
              alignment: AlignmentDirectional.topCenter,
              child: Text(
                'For you',
                style: TextStyle(
                    fontFamily: 'Agbalumo',
                    fontSize: 25,
                    color: Color.fromARGB(255, 86, 84, 84)),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 300,
              child: ListView(
                // padding: EdgeInsets.only(top: 10 ),
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(80, 159, 159, 159),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: Image(
                            image: AssetImage('images/nike.jpg'),
                            width: 150,
                            height: 180,
                          ),
                        ),
                        Text(
                          'Nike shoe',
                          style:
                              TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                        ),
                        Text(
                          '₹2000',
                          style:
                              TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(80, 159, 159, 159),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: Image(
                            image: AssetImage('images/combo.jpg'),
                            width: 150,
                            height: 180,
                          ),
                        ),
                        Text(
                          'Combo Shirt',
                          style:
                              TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                        ),
                        Text(
                          '₹2500',
                          style:
                              TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(80, 159, 159, 159),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: Image(
                            image: AssetImage('images/tsh.jpg'),
                            width: 150,
                            height: 180,
                          ),
                        ),
                        Text(
                          'T-shirt',
                          style:
                              TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                        ),
                        Text(
                          '₹450',
                          style:
                              TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(80, 159, 159, 159),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: Image(
                            image: AssetImage('images/cap.jpg'),
                            width: 150,
                          ),
                        ),
                        Text(
                          'Cap',
                          style:
                              TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                        ),
                        Text(
                          '₹2500',
                          style:
                              TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(80, 159, 159, 159),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: Image(
                            image: AssetImage('images/sams.jpg'),
                            width: 150,
                          ),
                        ),
                        Text(
                          'Smart Watch',
                          style:
                              TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                        ),
                        Text(
                          '₹5000',
                          style:
                              TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(80, 159, 159, 159),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: Image(
                            image: AssetImage('images/wd.jpg'),
                            width: 150,
                            height: 200,
                          ),
                        ),
                        Text(
                          'Frock',
                          style:
                              TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                        ),
                        Text(
                          '₹10,000',
                          style:
                              TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              )),
          Align(
              alignment: AlignmentDirectional.topCenter,
              child: Text(
                'Books',
                style: TextStyle(
                    fontFamily: 'Agbalumo',
                    fontSize: 25,
                    color: Color.fromARGB(255, 86, 84, 84)),
              )),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/b1.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Money Book',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹200',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/b2.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Psychology of Money',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹250',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/b3.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Philosophy of Mind',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹300',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/b4.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Creative Mind',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹500',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/b5.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Talk to Anyone',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹400',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/b6.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Travel Book',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹180',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          Align(
              alignment: AlignmentDirectional.topCenter,
              child: Text(
                'Watches',
                style: TextStyle(
                    fontFamily: 'Agbalumo',
                    fontSize: 25,
                    color: Color.fromARGB(255, 86, 84, 84)),
              )),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/w1.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Seiko',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹4000',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/w2.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Sonata',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹2000',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/w3.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Titan',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹2500',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/w4.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Fasttrack',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹2800',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/w5.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Timex',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹3000',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/w6.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Casio',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹6000',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          Align(
              alignment: AlignmentDirectional.topCenter,
              child: Text(
                'Shoes',
                style: TextStyle(
                    fontFamily: 'Agbalumo',
                    fontSize: 25,
                    color: Color.fromARGB(255, 86, 84, 84)),
              )),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/sh1.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Nike Running',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹2800',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/sh2.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Nike Casual',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹3000',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/sh3.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Loafers',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹2500',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/sh4.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'High heels',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹1800',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/sh5.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Boots',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹6000',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/sh6.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Chelsa Boots',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹7000',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          Align(
              alignment: AlignmentDirectional.topCenter,
              child: Text(
                'Mens',
                style: TextStyle(
                    fontFamily: 'Agbalumo',
                    fontSize: 25,
                    color: Color.fromARGB(255, 86, 84, 84)),
              )),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/m1.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'T-Shirt',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹500',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/m2.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Formal SHirt',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹2500',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/m3.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Casual Shirt',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹3000',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/m4.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Sandal Chinos',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹2800',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/m5.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Formal Pant',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹3000',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/m6.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Joggers',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹2500',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          Align(
              alignment: AlignmentDirectional.topCenter,
              child: Text(
                'Womens',
                style: TextStyle(
                    fontFamily: 'Agbalumo',
                    fontSize: 25,
                    color: Color.fromARGB(255, 86, 84, 84)),
              )),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/wm1.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Golden Frock',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹8000',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/wm2.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Blue Frock',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹6000',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/wm3.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Traditional wear',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹2500',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/wm4.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Chudidhar',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹5000',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/wm5.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Batman Frock',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹3000',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(80, 159, 159, 159),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image(
                          image: AssetImage('images/wd.jpg'),
                          width: 150,
                          height: 200,
                        ),
                      ),
                      Text(
                        'Long Frock',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      ),
                      Text(
                        '₹10,000',
                        style: TextStyle(fontFamily: 'Agbalumo', fontSize: 20),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
