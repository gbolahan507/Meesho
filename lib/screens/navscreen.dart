import 'package:flutter/material.dart';
import 'package:meesho/widget/organism/account/account_screen.dart';
import 'package:meesho/widget/organism/category/category_screen.dart';
import 'package:meesho/widget/organism/help/main_screen/help_screen.dart';
import 'package:meesho/widget/organism/homepage/mainscreen/homepage_screen.dart';
import 'package:meesho/widget/organism/orders/orders_screen.dart';


class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    // Category(),
    Scaffold(),
    Orders_screen(),
    Help_screen(),
    Account_screen(),


  ];


  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
       onTap: (index) => setState(() => _selectedIndex = index),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items:[ BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('home',)
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.category),
          title: Text('Category',)
          ),
          BottomNavigationBarItem(
         icon: Icon(Icons.cake),
         title: Text('Orders',)
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.help),
           title: Text('Help',)

          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.image),
           title: Text('Account',)

          ),
        ]
      )
          
    );
  }
}



