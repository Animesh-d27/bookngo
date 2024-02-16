import 'package:bookngo/configs/app_color.dart';
import 'package:flutter/material.dart';

class BookTicketBottomBar extends StatelessWidget {
  final text;

  const BookTicketBottomBar({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.transparent,
        height: 70,
        elevation: 0,
        child: GestureDetector(
          onTap: () {Navigator.pop(context);},
          child: Container(
            decoration: const BoxDecoration(
                color: AppColor.redTheme,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Center(
              child: Text(text,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ),
        ));
  }
}

