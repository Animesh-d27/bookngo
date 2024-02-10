import 'package:bookngo/configs/app_color.dart';
import 'package:bookngo/utils/home_screen_images.dart';
import 'package:flutter/material.dart';

class RecommendationContainer extends StatelessWidget {
  final List imageList;
  final String text;

  const RecommendationContainer(
      {super.key, required this.imageList, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            decoration: const BoxDecoration(
                color: AppColor.darkBlue,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            height: 350,
            width: 400,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetUtil().imgList[1],
                              fit: BoxFit.fitHeight))),
                  SizedBox(width: 150,
                    child: Text(text,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  )
                ])));
  }
}
