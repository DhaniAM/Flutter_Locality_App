import 'package:flutter/material.dart';
import 'merchant.dart';
import 'merchant_detail_screen.dart';

///Show this when user click any image in [MerchantDetailScreen]
class ImageDetail extends StatelessWidget {
  final Merchant merchant;
  final int index;

  const ImageDetail({Key? key, required this.merchant, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            Expanded(child: Image.asset(merchant.img[index])),
          ],
        ),
      ),
    );
  }
}
