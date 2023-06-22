import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
          color: Colors.grey[400],
          border: Border.all(color: Colors.white24, width: 1.5),
          borderRadius: BorderRadius.circular(50)),
    );
  }
}
