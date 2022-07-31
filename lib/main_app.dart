import 'package:flutter/material.dart';
import 'package:flutter_project_2/screen/account_screen.dart';
import 'package:flutter_project_2/screen/home_screen.dart';
import 'package:flutter_project_2/screen/random_screen.dart';
import 'package:flutter_project_2/screen/register_merchant_screen.dart';
import 'package:flutter_project_2/screen/search_screen.dart';

/// Color Palette
/// Color.fromRGBO(255, 92, 0, 1),
/// Color.fromRGBO(255, 144, 15, 1),
/// Color.fromRGBO(255, 202, 15, 1),
/// Color.fromRGBO(255, 230, 0, 1),

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int selectedIndex = 0;
  Color c1 = const Color.fromRGBO(255, 92, 0, 1);
  Color c2 = const Color.fromRGBO(255, 144, 15, 1);
  Color c3 = const Color.fromRGBO(255, 202, 15, 1);
  Color c4 = const Color.fromRGBO(255, 230, 0, 1);

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

      /// Top Bar in Home screen
      appBar: AppBar(
        title: const Text(
          'Locality',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

        /// Top Bar Gradient Styling
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.orange,
              ],
            ),
          ),
        ),
      ),

      /// Content for each bottomNavigationBar
      body: Container(child: _widgetOptions.elementAt(selectedIndex)),

      /// bottomNavigationBar button
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(size: 30),
        backgroundColor: c2,
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
        foregroundColor: Colors.red,
        backgroundColor: Colors.white,
        hoverElevation: 24.6,
        child: const Icon(Icons.add_box_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
