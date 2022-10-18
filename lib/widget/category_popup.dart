import 'package:flutter/material.dart';

class CategoryPopup extends StatelessWidget {
  const CategoryPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
        const PopupMenuItem(
          child: Text('Food'),
        ),
        const PopupMenuItem(
          child: Text('Drink'),
        ),
        const PopupMenuItem(
          child: Text('Stationary'),
        ),
        const PopupMenuItem(
          child: Text('Tech'),
        ),
        const PopupMenuItem(
          child: Text('Vehicle'),
        ),
        const PopupMenuItem(
          child: Text('Medic'),
        ),
        const PopupMenuItem(
          child: Text('Others'),
        ),
      ],
    );
  }
}
