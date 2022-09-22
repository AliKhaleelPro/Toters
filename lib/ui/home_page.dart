import 'package:flutter/material.dart';
import 'package:toters/ui/screens/account.dart';
import 'package:toters/ui/screens/butler.dart';
import 'package:toters/ui/screens/main_page.dart';
import 'package:toters/ui/screens/order.dart';
import 'package:toters/ui/screens/search.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var index = 0;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

    });
  }

 final screens = [
   MainPage(),
   Search(),
   Butler(),
   Order(),
   Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:screens[_selectedIndex],



      bottomNavigationBar: BottomNavigationBar(


        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(

            icon: Icon(
              Icons.home,

            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(

            icon: Icon(
              Icons.search,

            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.spa_outlined,
            ),
            label: 'Buteler',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt_outlined,

            ),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
             
            ),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey.withOpacity(0.7),
        onTap: _onItemTapped,
        backgroundColor: Colors.teal,
          showSelectedLabels: true,



      ),
    );
  }


}
