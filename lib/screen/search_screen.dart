import 'package:flutter/material.dart';
import 'package:flutter_project_2/merchant_data.dart';
import 'package:flutter_project_2/widget/merchant_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 14, left: 14, right: 14),
          child: TextField(
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              hintStyle: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 0.7),
              ),
              hintText: "Find merchants, menus, tags...",
              filled: true,
              fillColor: Color.fromRGBO(255, 144, 15, 1),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(255, 144, 15, 1),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 255, 72, 0),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
            ),
          ),
        ),
        Column(
          children: <Widget>[
            MerchantCard(
              merchant: merchantList[0],
            ),
            MerchantCard(
              merchant: merchantList[1],
            ),
            MerchantCard(
              merchant: merchantList[2],
            ),
          ],
        ),
      ],
    );
  }
}
