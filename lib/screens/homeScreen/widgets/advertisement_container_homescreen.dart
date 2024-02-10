import 'package:bookngo/configs/app_dimensions.dart';
import 'package:flutter/material.dart';

class AdvertisementScreen extends StatelessWidget {
  const AdvertisementScreen({super.key, required this.imgListAdd});

  final List imgListAdd;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(kCircularRadius)),
            image:
                DecorationImage(image: imgListAdd[0], fit: BoxFit.fitWidth)));
  }
}
