import 'package:flutter/material.dart';

class LanguageCard extends StatelessWidget {
  const LanguageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.yellow,
            Colors.orange,
          ],
        ),
      ),
      margin: const EdgeInsets.all(10),
      child: Card(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(20),
                child: Image.asset(
                  'img/C.png',
                  width: 100,
                  height: 100,
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      'C',
                      style: TextStyle(fontSize: 40),
                    ),
                    Text('since 1972'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
