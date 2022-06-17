import 'package:flutter/material.dart';

class LanguageCard extends StatelessWidget {
  const LanguageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: const BoxDecoration(
      //   borderRadius: BorderRadius.only(bottomRight: Radius.circular(100)),
      // gradient: LinearGradient(
      //   colors: [
      //     Colors.yellow,
      //     Colors.orange,
      //   ],
      // ),
      // ),
      margin: const EdgeInsets.all(10),
      child: Card(
        shadowColor: Colors.blue,
        color: const Color(0xFFFFAD43),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // Image
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(15),
                child: Image.asset(
                  'img/C.png',
                  height: 100,
                ),
              ),
              // Text
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
