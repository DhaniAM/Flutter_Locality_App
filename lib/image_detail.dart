import 'package:flutter/material.dart';
import 'merchant.dart';

class ImageDetail extends StatelessWidget {
  final Merchant merchant;
  final int index;
  const ImageDetail({Key? key, required this.merchant, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Expanded(
            child: InteractiveViewer(
                maxScale: 5, child: Image.asset(merchant.img[index]))),
      ),
    );
  }
}