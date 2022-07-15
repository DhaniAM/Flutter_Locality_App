import 'package:flutter/material.dart';
import 'package:flutter_project_2/merchant.dart';

/// TagCard returning item based on the list
class TagCard extends StatelessWidget {
  final Merchant merchant;
  final int? index;
  final Color color, textColor;
  const TagCard(
      {Key? key,
      required this.merchant,
      this.index,
      this.color = Colors.white,
      this.textColor = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: color,
      ),
      padding: const EdgeInsets.all(5),
      child: Text(merchant.tag.elementAt(index ?? 0),
          style: TextStyle(
            fontSize: 12,
            color: textColor,
          )),
    );
  }
}
