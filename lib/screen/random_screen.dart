import 'package:flutter/material.dart';
import 'package:flutter_project_2/state/getx.dart';
import 'package:get/get.dart';

enum CategoryItem { food, drink }

class RandomScreen extends StatelessWidget {
  const RandomScreen({Key? key, c1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myColor = Get.put(MyColorPalette());
    final randomCategory = Get.put(RandomCategory());

    return Center(
      child: Stack(
        children: [
          Image.asset('img/Random-button.png'),

          /// Merchant Choice Circle Button
          Positioned(
            right: 35,
            top: 150,
            child: PopupMenuButton(
              child: Container(
                width: 70,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: myColor.c1,
                ),
                child: Center(
                  child: GetX<RandomCategory>(
                    builder: (_) => Text(randomCategory.category.value,
                        style: (randomCategory.category.value != "Stationary")
                            ? const TextStyle(color: Colors.white, fontWeight: FontWeight.w900)
                            : const TextStyle(
                                color: Colors.white, fontWeight: FontWeight.w900, fontSize: 10)),
                  ),
                ),
              ),
              onSelected: (var value) {
                randomCategory.setCategory(value);
              },
              itemBuilder: (BuildContext context) => [
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
            ),
          ),
        ],
      ),
    );
  }
}
