import 'package:flutter/material.dart';
import 'package:flutter_project_2/merchant.dart';
import 'package:flutter_project_2/tag_card.dart';

class MerchantCard extends StatelessWidget {
  final Merchant merchant;
  final BuildContext context;

  const MerchantCard({
    Key? key,
    required this.merchant,
    required this.context,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int tagLength = merchant.tag.length;
    return Container(
      margin: const EdgeInsets.all(8),
      // Each merchant on home page
      child: Card(
        elevation: 0.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color.fromARGB(255, 255, 231, 96),
                  Color.fromARGB(255, 255, 137, 3),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
              boxShadow: [
                BoxShadow(
                  blurRadius: 1,
                  blurStyle: BlurStyle.normal,
                  offset: Offset(1, 2),
                  color: Colors.grey,
                ),
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // Image
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 5.0,
                    color: Colors.white,
                  ),
                ),
                padding: const EdgeInsets.all(5),
                child: Image.asset(
                  merchant.img[0],
                  height: 100,
                ),
              ),

              /// Merchant Name and Tag
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    /// Merchant name
                    Text(
                      merchant.name,
                      style: const TextStyle(fontSize: 30),
                    ),

                    /// Tag
                    SizedBox(
                      width: 224,
                      child: Wrap(
                        children: <Widget>[
                          for (int i = 0; i < tagLength; i++)
                            TagCard(
                              merchant: merchant,
                              index: i,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
