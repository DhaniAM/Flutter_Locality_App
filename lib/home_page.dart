import 'package:flutter/material.dart';
import 'package:flutter_project_2/merchant_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        MerchantCard(),
        MerchantCard(),
        MerchantCard(),
      ],
    );
  }
}
