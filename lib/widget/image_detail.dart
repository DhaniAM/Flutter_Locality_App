import 'package:flutter/material.dart';
import 'package:flutter_project_2/merchant_data.dart';
import 'package:flutter_project_2/screen/merchant_detail_screen.dart';

///Show this when user click any image in [MerchantDetailScreen]
class ImageDetail extends StatelessWidget {
  final Merchant merchant;
  final int index;

  const ImageDetail({Key? key, required this.merchant, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// Image
          InteractiveViewer(
              panEnabled: true,
              minScale: 1,
              maxScale: 4,
              child: Expanded(child: Image.asset(merchant.img[index]))),

          /// Back Button
          Container(
            padding: const EdgeInsets.all(6),
            margin: const EdgeInsets.only(top: 20),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    blurRadius: 1,
                    color: Colors.grey,
                    spreadRadius: 1,
                    offset: Offset(0.5, 1)),
              ],
            ),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.purple,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
