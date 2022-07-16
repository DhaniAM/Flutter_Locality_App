import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          decoration: BoxDecoration(),
          child: const TextField(
            decoration: InputDecoration(
              labelText: "Cari barang yang diinginkan...",
            ),
          ),
        ),
      ],
    );
  }
}
