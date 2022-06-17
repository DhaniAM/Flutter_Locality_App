import 'package:flutter/material.dart';
import 'package:flutter_project_2/Merchant.dart';

class MerchantCard extends StatelessWidget {
  Merchant merchant;
  BuildContext context;
  int index;

  MerchantCard(
      {Key? key,
      required this.merchant,
      required this.context,
      required this.index})
      : super(key: key);

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
              padding: const EdgeInsets.all(5),
              child: Image.asset(
                merchant.img[0],
                width: 100,
              ),
            ),
            // Text
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    merchant.name,
                    style: const TextStyle(fontSize: 30),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.yellow,
                        ),
                        margin: const EdgeInsets.only(top: 10, left: 10),
                        padding: const EdgeInsets.all(5),
                        child: Text(merchant.tag.elementAt(0),
                            style: TextStyle(
                              fontSize: 12,
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.yellow,
                        ),
                        margin: const EdgeInsets.only(top: 10, left: 10),
                        padding: const EdgeInsets.all(5),
                        child: Text(merchant.tag.elementAt(1),
                            style: TextStyle(
                              fontSize: 12,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
