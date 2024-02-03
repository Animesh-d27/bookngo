import 'package:bookngo/configs/app_color.dart';
import 'package:bookngo/configs/spacing.dart';
import 'package:bookngo/utils/constants/string_constants.dart';
import 'package:flutter/material.dart';

class RateNowContainer extends StatelessWidget {
  const RateNowContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 55,
        // width: 500,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Padding(
            padding:
                const EdgeInsets.only(right: bodyPadding, left: bodyPadding),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(Icons.thumb_up_alt_rounded, color: Colors.green),
                  const SizedBox(width: 5),
                  Text(StringConstants.kLikes,
                      style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  const Spacer(),
                  Container(
                      height: 23,
                      width: 75,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: AppColor.redTheme),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(6))),
                      child: const Center(
                          child: Text(StringConstants.kRateNow,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.redTheme))))
                ])));
  }
}
