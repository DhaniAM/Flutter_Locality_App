import 'package:flutter/material.dart';
import 'package:flutter_project_2/merchant_list.dart';

class MerchantCard extends StatelessWidget {
  const MerchantCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Card(
        shadowColor: Colors.blue,
        color: const Color(0xFFFFAD43),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // Image
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 5.0,
                  color: Colors.white,
                ),
              ),
              // color: Colors.white,
              padding: const EdgeInsets.all(5),
              child: Image.asset(
                'img/C.png',
                height: 100,
              ),
            ),
            // Text
            Padding(
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
          ],
        ),
      ),
    );
  }
}
