import 'package:flutter/material.dart';
import 'package:flutter_project_2/widget/image_detail.dart';
import 'package:flutter_project_2/widget/tag_card.dart';
import 'package:flutter_project_2/merchant_data.dart';

class MerchantDetailScreen extends StatelessWidget {
  final Merchant merchant;
  const MerchantDetailScreen({Key? key, required this.merchant})
      : super(key: key);

  static const TextStyle headingStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w900,
    color: Colors.purple,
  );

  @override
  Widget build(BuildContext context) {
    final int tagLength = merchant.tag.length;
    // Saving each menu to menuData, then pass to the widget
    final menuName = <Widget>[];
    final menuPrice = <Widget>[];
    for (dynamic menuList in merchant.menu.entries) {
      final key = menuList.key;
      final value = menuList.value;
      menuName.add(Text(key));
      menuPrice.add(Text('Rp $value,-'));
    }

    final BoxDecoration detailDecoration = BoxDecoration(
      color: const Color.fromRGBO(228, 228, 228, 1).withOpacity(0.2),
    );

    return Scaffold(
      body: Container(
        /// Backgroun color
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color.fromRGBO(252, 225, 208, 1),
              Color.fromRGBO(255, 173, 214, 1),
              Color.fromRGBO(162, 186, 245, 1),
            ],
          ),
        ),
        child: ListView(
          children: [
            Stack(
              children: <Widget>[
                /// Merchant top image
                Hero(
                  tag: merchant.img,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ImageDetail(merchant: merchant, index: 0);
                      }));
                    },
                    child: Image.asset(
                      merchant.img[0],
                    ),
                  ),
                ),

                /// Back arrow button
                Container(
                  padding: const EdgeInsets.all(6),
                  margin: const EdgeInsets.all(10),
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
                        color: Color.fromRGBO(156, 39, 176, 1),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),

                /// Merchant Little Summary Box
                Center(
                  child: Container(
                    width: 300,
                    height: 200,
                    margin: const EdgeInsets.only(top: 300),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(161, 60, 255, 1)
                          .withOpacity(0.3),
                      border: Border.all(
                          color: const Color.fromRGBO(106, 1, 175, 1),
                          width: 3),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          /// Box Merchant Name
                          SizedBox(
                            child: Text(
                              merchant.name,
                              style: const TextStyle(
                                  fontSize: 36,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),

                          /// Box Merchant Tags
                          Container(
                            height: 70,
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
                                      color: const Color.fromRGBO(
                                          198, 50, 224, 0.8),
                                      textColor: Colors.white,
                                    ),
                                  )
                              ],
                            ),
                          ),

                          /// Open time and Rating
                          SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                /// Open Time
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    const Icon(
                                      Icons.access_time,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    Text(
                                      merchant.openTime,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),

                                /// Rating
                                Row(
                                  children: <Widget>[
                                    const Icon(
                                      Icons.star_rounded,
                                      color: Colors.yellow,
                                      size: 30,
                                    ),
                                    Text(
                                      merchant.rating.toString(),
                                      style: const TextStyle(
                                          color: Colors.yellow,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
              ],
            ),

            /// Overview
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              decoration: detailDecoration,
              // height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text(
                      'Overview',
                      style: headingStyle,
                    ),
                  ),
                  Text(merchant.overview),
                ],
              ),
            ),

            /// Menu
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(bottom: 10),
              decoration: detailDecoration,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text(
                      'Menu',
                      style: headingStyle,
                    ),
                  ),
                  Table(
                    columnWidths: const {1: FractionColumnWidth(.25)},
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: <TableRow>[
                      for (int i = 0; i < menuName.length; i++)
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 3.0),
                            child: menuName[i],
                          ),
                          menuPrice[i],
                        ]),
                    ],
                  ),
                ],
              ),
            ),

            /// Merchant Images
            /// It still not dynamic, so can't add extra images yet
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration: detailDecoration,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: 200,
                    child: Row(
                      children: <Widget>[
                        /// First Image
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ImageDetail(merchant: merchant, index: 1);
                            }));
                          },
                          child: Image.asset(
                            merchant.img[1],
                            height: 200,
                          ),
                        ),
                        const VerticalDivider(
                          color: Colors.purple,
                          thickness: 2,
                          width: 20,
                          indent: 50,
                          endIndent: 50,
                        ),

                        /// Second Image
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ImageDetail(merchant: merchant, index: 2);
                            }));
                          },
                          child: Image.asset(
                            merchant.img[2],
                            height: 200,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),

            /// Location
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(bottom: 10),
              decoration: detailDecoration,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text(
                      'Location',
                      style: headingStyle,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      for (var i in merchant.location) Text(i),
                    ],
                  ),
                ],
              ),
            ),

            /// Contact
            Container(
              padding: const EdgeInsets.all(20),
              // margin: const EdgeInsets.only(bottom: 10),
              decoration: detailDecoration,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text(
                      'Contact',
                      style: headingStyle,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      for (var i in merchant.contact) Text(i),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
