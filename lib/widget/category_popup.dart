import 'package:flutter/material.dart';

enum Category { food, drink, stationary, tech, vehicle, medic, others }

class CategoryPopup extends StatelessWidget {
  const CategoryPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: (value) {},
      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
        const PopupMenuItem(
          value: "Food",
          child: Text('Food'),
        ),
        const PopupMenuItem(
          value: "Drink",
          child: Text('Drink'),
        ),
        const PopupMenuItem(
          value: "Stationary",
          child: Text('Stationary'),
        ),
        const PopupMenuItem(
          value: "Tech",
          child: Text('Tech'),
        ),
        const PopupMenuItem(
          value: "Vehicle",
          child: Text('Vehicle'),
        ),
        const PopupMenuItem(
          value: "Medic",
          child: Text('Medic'),
        ),
        const PopupMenuItem(
          value: "Others",
          child: Text('Others'),
        ),
      ],
    );
  }
}
