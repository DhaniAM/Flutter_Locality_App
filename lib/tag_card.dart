import 'package:flutter/material.dart';
import 'package:flutter_project_2/merchant.dart';

class TagCard extends StatelessWidget {
  final Merchant merchant;
  final int? index;
  const TagCard({Key? key, required this.merchant, this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color(0xFFFFE600),
        ),
        padding: const EdgeInsets.all(5),
        child: Text(merchant.tag.elementAt(index ?? 0),
            style: const TextStyle(
              fontSize: 12,
            )),
      ),
    );
  }
}
