import 'package:bookngo/configs/app_color.dart';
import 'package:flutter/material.dart';

class SaveEditProfileBottomBar extends StatelessWidget {

  const SaveEditProfileBottomBar({super.key});

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
              child: Text('Save Changes',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ),
        ));
  }
}

