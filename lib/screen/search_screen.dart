import 'package:flutter/material.dart';
import 'package:flutter_project_2/merchant_data.dart';
import 'package:flutter_project_2/widget/merchant_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          decoration: const BoxDecoration(),
          child: const TextField(
            decoration: InputDecoration(
              labelText: "Cari barang yang diinginkan...",
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
