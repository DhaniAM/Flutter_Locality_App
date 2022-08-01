import 'package:flutter/material.dart';
import 'package:flutter_project_2/widget/merchant_card.dart';
import 'package:flutter_project_2/merchant_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// build each Merchant Card in home screen
    return ListView.builder(
      itemBuilder: (context, index) {
        final Merchant merchant = merchantList[index];
        return Padding(
          padding: const EdgeInsets.only(top: 14, left: 14, right: 14),
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
