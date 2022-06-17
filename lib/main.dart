import 'package:flutter/material.dart';

import 'bottom_nav.dart';
import 'home_page.dart';

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
        appBar: AppBar(title: const Text('Prramming Languages')),
        body: const HomePage(),
        bottomNavigationBar: const BottomNav(),
      ),
    );
  }
}
