import 'package:flutter/material.dart';
import 'package:flutter_project_2/screen/account_screen.dart';
import 'package:flutter_project_2/screen/home_screen.dart';
import 'package:flutter_project_2/screen/random_screen.dart';
import 'package:flutter_project_2/screen/register_merchant_screen.dart';
import 'package:flutter_project_2/screen/search_screen.dart';
import 'package:flutter_project_2/state/getx.dart';
import 'package:get/get.dart';

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int selectedIndex = 0;
  final myColor = Get.put(MyColorPalette());

  /// for Content Screen, not for the bottomNavBar
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    RandomScreen(),
    AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      /// Content for each bottomNavigationBar
      body: Container(child: _widgetOptions.elementAt(selectedIndex)),

      /// bottomNavigationBar button
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(size: 30),
        backgroundColor: myColor.c2,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_mark_rounded),
            label: 'Random',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Account',
          ),
        ],
      ),

      /// Registering Merchant Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const RegisterMerchant();
          }));
        },
        tooltip: 'Add Menu',
        foregroundColor: myColor.c1,
        backgroundColor: Colors.white,
        hoverElevation: 24.6,
        child: const Icon(Icons.add_box_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
