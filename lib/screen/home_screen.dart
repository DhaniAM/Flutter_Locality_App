import 'package:flutter/material.dart';
import 'package:locality/merchant_data.dart';
import 'package:locality/widget/merchant_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// build each Merchant Card in home screen
    return ListView.builder(
      itemBuilder: (context, index) {
        final Merchant merchant = merchantList[index];
        return MerchantCard(
          merchant: merchant,
        );
      },
      itemCount: merchantList.length,
    );
  }
}
