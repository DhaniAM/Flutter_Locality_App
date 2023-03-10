import 'package:flutter/material.dart';
import 'package:locality/merchant_data.dart';
import 'package:locality/screen/merchant_detail_screen.dart';
import 'package:locality/widget/tag_card.dart';

class MerchantCard extends StatelessWidget {
  final Merchant merchant;

  const MerchantCard({
    Key? key,
    required this.merchant,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, left: 14, right: 14),
      child: Container(
        decoration: BoxDecoration(
          border:
              Border.all(color: const Color.fromRGBO(0, 0, 0, 0.3), width: 0.5),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 1,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          child: InkWell(
            borderRadius: BorderRadius.circular(15),
            splashColor: const Color.fromARGB(255, 255, 149, 43),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MerchantDetailScreen(merchant: merchant);
              }));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                /// Merchant Image
                Container(
                  padding: const EdgeInsets.only(top: 5, left: 5, bottom: 5),
                  child: Hero(
                    tag: merchant.img,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        merchant.img[0],
                        height: 100,
                      ),
                    ),
                  ),
                ),

                /// Merchant Name, Type, and Tag
                Container(
                  width: 190,
                  padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      /// Merchant name
                      Text(
                        merchant.name,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),

                      /// Merchant Category/Type
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 10, bottom: 0),
                        child: Text('Type: ${merchant.type}'),
                      ),

                      /// Tag
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: SizedBox(
                          /// width of tag container
                          child: Wrap(
                            children: <Widget>[
                              /// Start from 1 because 0 is minuman so it looks ugly and the same for all
                              /// the Tag
                              for (int i = 1; i < 3; i++)
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 10, right: 5),
                                  child: TagCard(
                                    merchant: merchant,
                                    index: i,
                                    color: const Color(0xFFFFE600),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                /// Star Rating
                Column(
                  children: <Widget>[
                    const Icon(Icons.star, color: Colors.yellow, size: 50),
                    Text(
                      merchant.rating,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
