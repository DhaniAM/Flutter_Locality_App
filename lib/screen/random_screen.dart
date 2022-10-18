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
              color: myColor.c1,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              elevation: 5,
              offset: Offset(25, -100),
              constraints: const BoxConstraints.expand(width: 150, height: 360),
              child: Container(
                width: 70,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: myColor.c1,
                  boxShadow: <BoxShadow>[
                    BoxShadow(color: myColor.c3, blurRadius: 2, offset: Offset(0, 1))
                  ],
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
              onSelected: (String value) {
                randomCategory.setCategory(value);
              },
              itemBuilder: (BuildContext context) => [
                const PopupMenuItem(
                  value: "Food",
                  child: Text(
                    'Food',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const PopupMenuItem(
                  value: "Drink",
                  child: Text(
                    'Drink',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const PopupMenuItem(
                  value: "Stationary",
                  child: Text(
                    'Stationary',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const PopupMenuItem(
                  value: "Tech",
                  child: Text(
                    'Tech',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const PopupMenuItem(
                  value: "Vehicle",
                  child: Text(
                    'Vehicle',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const PopupMenuItem(
                  value: "Medic",
                  child: Text(
                    'Medic',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const PopupMenuItem(
                  value: "Others",
                  child: Text(
                    'Others',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
