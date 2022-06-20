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
                  Color(0xFFFF8903),
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
              /// Merchant Image
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 5.0,
                    color: Colors.white,
                  ),
                ),
                padding: const EdgeInsets.all(5),
                child: Hero(
                  tag: merchant.img,
                  child: Image.asset(
                    merchant.img[0],
                    height: 100,
                  ),
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
                      // width of tag container
                      child: Wrap(
                        children: <Widget>[
                          // Start from 1 because 0 is minuman so it looks ugly and the same for all
                          // the Tag
                          for (int i = 1; i < 3; i++)
                            Container(
                              margin: const EdgeInsets.only(top: 10, left: 10),
                              child: TagCard(
                                merchant: merchant,
                                index: i,
                                color: const Color(0xFFFFE600),
                              ),
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
