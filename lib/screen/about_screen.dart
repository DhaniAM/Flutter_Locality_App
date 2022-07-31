import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyling = TextStyle(
      fontSize: 16,
      height: 1.8,
    );
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            'Locality',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: FlutterLogo(
              size: 150,
            ),
          ),
          Text(
            'Created with Flutter',
            style: textStyling,
          ),
          Text(
            '\xA9 copyright 2022 Ramadhani A.M',
            style: textStyling,
          ),
          Text(
            'All rights reserved',
            style: textStyling,
          ),
        ],
      ),
    );
  }
}
