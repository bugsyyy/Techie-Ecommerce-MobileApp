//PROJECT IN ELECTIVE 1
//DEVELOPERS:
//DELA CRUZ, RYAN KHYLE N.
//BUGAYONG, LUIGI MIGUEL
//VILLANUEVA, RICK FRANCIS

// ignore_for_file:prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//MY OWN IMPORT
import 'package:techie/components/horizontal_listview.dart';
import 'package:techie/components/products.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget images_carousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/rtx3090.png'),
          AssetImage('images/laptop.png'),
          AssetImage('images/case.jpg'),
          AssetImage('images/game.png'),
          AssetImage('images/rtxrestock.png'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 3.0,
        indicatorBgPadding: 6.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.black87,
        title: Text('Techie'),
        actions: <Widget>[
          new IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          new IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              )),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //*HEADER-----------------
            UserAccountsDrawerHeader(
              accountName: Text('Khyle Dela Cruz'),
              accountEmail: Text('khyledelacruz@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.black87),
            ),
            //*BODY-----------------------
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home page'),
                leading: Icon(Icons.home, color: Colors.blue.shade700),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person, color: Colors.orange.shade700),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My order'),
                leading:
                    Icon(Icons.shopping_basket, color: Colors.green.shade700),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Shopping cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.black87),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite, color: Colors.red.shade600),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blueGrey,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blueGrey),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          //IMAGES CAROUSEL BEGIN
          images_carousel,

          //PADDING WIDGET
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Categories',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),

          // HORIZONTAL LIST VIEW BEGINS HERE
          HorizontalList(),

          //PADDING WIDGET
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Recent product',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),

          //GRID VIEW
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
