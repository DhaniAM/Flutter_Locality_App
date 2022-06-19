import 'package:flutter/material.dart';
import 'package:flutter_project_2/tag_card.dart';

import 'merchant.dart';

class MerchantDetailScreen extends StatelessWidget {
  final Merchant merchant;
  const MerchantDetailScreen({Key? key, required this.merchant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int tagLength = merchant.tag.length;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: <Widget>[
              /// Merchant background image
              Image.asset(
                merchant.img[0],
              ),

              /// Back arrow button
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

              /// Merchant Mid Box
              Container(
                width: 300,
                height: 300,
                margin: const EdgeInsets.only(top: 250, left: 50, right: 50),
                decoration: BoxDecoration(
                  color: const Color(0xFFFF8903).withOpacity(0.5),
                  border: Border.all(color: Colors.red, width: 3),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Column(children: <Widget>[
                  /// Box Merchant name
                  Container(
                    child: Text(
                      merchant.name,
                      style: const TextStyle(fontSize: 36),
                    ),
                  ),

                  /// Box Merchant Tags
                  Container(
                    height: 70,
                    // color: Colors.blue,
                    // align all tag to center based on cross axis
                    alignment: Alignment.center,
                    child: Wrap(
                      // align all tag to center based on main axis
                      alignment: WrapAlignment.center,
                      children: <Widget>[
                        for (int i = 0; i < tagLength; i++)
                          Container(
                            margin: const EdgeInsets.all(5),
                            child: TagCard(
                              merchant: merchant,
                              index: i,
                            ),
                          )
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          )
        ],
      ),
    );
  }
}
