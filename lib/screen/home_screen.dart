import 'package:flutter/material.dart';
import 'package:flutter_project_2/widget/merchant_card.dart';
import 'package:flutter_project_2/merchant_data.dart';
import 'package:flutter_project_2/screen/merchant_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// build each Merchant Card in home screen
    return ListView.builder(
      itemBuilder: (context, index) {
        final Merchant merchant = merchantList[index];
        return InkWell(
          splashColor: Colors.yellow,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MerchantDetailScreen(merchant: merchant);
            }));
          },
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
