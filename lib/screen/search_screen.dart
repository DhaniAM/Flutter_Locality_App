import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          decoration: const BoxDecoration(),
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
