

import 'package:flutter/material.dart';
import 'package:planet/chatgpt.dart';

import 'package:planet/donnation/donnationscrren.dart';

import 'package:planet/fooddonnation/food.dart';

import 'package:planet/maps.dart';
import 'package:planet/news/newsscreen.dart';
import 'package:planet/profile/profile_screen.dart';


import 'package:planet/shopping.dart';
import 'package:planet/transfert.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Dashbordscreen(),
    Donationscreen(),
    Shop(),
    Food()
    
  //  MyHomePage(title: "title"),
  //  MyHomePage(title: "title"),
  //  MyHomePage(title: "title"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green),
      drawer:  Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                    "images/ahmedkhouaja.png"),
              ),
              accountEmail: Text('ahmedkhouaja@gmail.com'),
              accountName: Text(
                'Ahmed Khouaja',
                style: TextStyle(fontSize: 24.0),
              ),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text('Langne'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.map_outlined),
              title: const Text('Transfert'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Transfert()));
                
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Setting'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.wb_sunny_outlined),
              title: const Text('ChatGpt'),
              onTap: () {
                
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatGpt()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_pin),
              title: const Text('Profile'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()  ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.door_front_door),
              title: const Text('Sign Out'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
               Navigator.push(context, MaterialPageRoute(builder: (context) => Maps()  ));
              },
            ),
          ],
        ),
      ),
      
      body: Container(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done_all),
            label: 'Donnation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: 'Food',
          ),
        //    BottomNavigationBarItem(
         //   icon: Icon(Icons.home),
        //    label: 'Home',
       //   ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 3, 193, 12),
        unselectedItemColor: Color.fromARGB(255, 1, 3, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
