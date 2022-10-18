import 'dart:ui';
import 'package:get/get.dart';

class MyColorPalette extends GetxController {
  Color c1 = const Color.fromRGBO(255, 92, 0, 1);
  Color c2 = const Color.fromRGBO(255, 144, 15, 1);
  Color c3 = const Color.fromRGBO(255, 202, 15, 1);
  Color c4 = const Color.fromRGBO(255, 230, 0, 1);
}

class RandomCategory extends GetxController {
  var category = "Food".obs;
  void setCategory(var name) {
    category.value = name;
  }
}
