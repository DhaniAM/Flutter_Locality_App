import 'package:flutter/material.dart';

class RandomScreen extends StatelessWidget {
  const RandomScreen({Key? key, c1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Image.asset('img/Random-button.png'),

          /// Merchant Choice Circle Button
          Positioned(
            right: 45,
            top: 150,
            child: FloatingActionButton(
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
