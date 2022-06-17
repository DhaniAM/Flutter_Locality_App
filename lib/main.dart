import 'package:flutter/material.dart';

import 'Bottom_Nav.dart';
import 'Home_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'comfortaa',
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Merchant Lokal')),
        body: const HomePage(),
        bottomNavigationBar: const BottomNav(),
      ),
    );
  }
}
