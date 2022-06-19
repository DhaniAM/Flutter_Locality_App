import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const <Widget>[
          Text(
            'Local Merchant',
            style: TextStyle(
              fontSize: 50,
            ),
          ),
          Text('copyright 2022 Ramadhani A.M'),
          Text('All rights reserved'),
        ],
      ),
    );
  }
}
