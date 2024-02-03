import 'package:flutter/material.dart';

class MovieImageContainer extends StatelessWidget {
  const MovieImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: 500,
        decoration: const BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.all(Radius.circular(10))));
  }
}
