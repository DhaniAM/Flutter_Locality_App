import 'package:flutter/material.dart';
import 'package:flutter_project_2/merchant_card.dart';
import 'package:flutter_project_2/merchant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Merchant merchant = merchantList[index];
        return InkWell(
          onTap: () {},
          child: MerchantCard(
            merchant: merchant,
            context: context,
          ),
        );
      },
      itemCount: merchantList.length,
    );
  }
}
