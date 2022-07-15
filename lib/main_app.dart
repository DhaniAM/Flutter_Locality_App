import 'package:flutter/material.dart';
import 'package:flutter_project_2/about_screen.dart';
import 'package:flutter_project_2/home_screen.dart';
import 'package:flutter_project_2/register_merchant.dart';

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    AboutScreen(),
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),

      /// Registering Merchant Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const RegisterMerchant();
          }));
        },
        tooltip: 'Add Menu',
        child: const Icon(Icons.add_box_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
