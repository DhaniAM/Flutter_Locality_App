import 'package:flutter/material.dart';

import 'bottom_nav.dart';
import 'home_menu.dart';

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
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Programming Languages')),
        body: const HomeMenu(),
        bottomNavigationBar: const BottomNav(),
      ),
    );
  }
}
