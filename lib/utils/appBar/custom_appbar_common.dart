import 'package:flutter/material.dart';

class CustomAppBarCommon extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarCommon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      height: 105,
      color: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(90);
}
