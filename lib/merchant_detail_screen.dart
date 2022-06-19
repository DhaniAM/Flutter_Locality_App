import 'package:flutter/material.dart';

import 'merchant.dart';

class MerchantDetailScreen extends StatelessWidget {
  final Merchant merchant;
  const MerchantDetailScreen({Key? key, required this.merchant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: <Widget>[
              Image.asset(
                merchant.img[0],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 300,
                margin: const EdgeInsets.only(top: 250, left: 50, right: 50),
                decoration: BoxDecoration(
                  color: const Color(0xFFFF8903).withOpacity(0.5),
                  border: Border.all(color: Colors.red, width: 3),
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
