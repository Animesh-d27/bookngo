import 'package:bookngo/configs/app_color.dart';
import 'package:bookngo/utils/constants/string_constants.dart';
import 'package:flutter/material.dart';

class BookTicketBottomBar extends StatelessWidget {
  const BookTicketBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.transparent,
        height: 70,
        elevation: 0,
        child: Container(
          decoration: const BoxDecoration(
              color: AppColor.redTheme,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: const Center(
            child: Text(StringConstants.kBookNow,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
        ));
  }
}
