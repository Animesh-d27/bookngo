// ignore_for_file: use_key_in_widget_constructors

import 'package:bookngo/utils/appBar/custom_appbar_common.dart';
import 'package:bookngo/utils/home_screen_images.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const CustomAppBarCommon(),
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    3,
                    (index) => Center(
                        child: Container(
                            height: 200, // Set your desired height
                            width: 390,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 10.0),
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                    image: AssetUtil().imgMovies[index],
                                    fit: BoxFit.fitWidth))))))));
  }
}
