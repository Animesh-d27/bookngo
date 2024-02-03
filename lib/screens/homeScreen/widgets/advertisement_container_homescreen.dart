import 'package:flutter/material.dart';

class AdvertisementScreen extends StatelessWidget {
  const AdvertisementScreen({super.key, required this.imgListAdd});

  final List imgListAdd;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        width: 500,
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            image:
                DecorationImage(image: imgListAdd[0], fit: BoxFit.fitWidth)));
  }
}
