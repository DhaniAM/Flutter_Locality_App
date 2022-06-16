import 'package:flutter/material.dart';
import 'package:flutter_project_2/language_card.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        LanguageCard(),
        LanguageCard(),
        LanguageCard(),
      ],
    );
  }
}
