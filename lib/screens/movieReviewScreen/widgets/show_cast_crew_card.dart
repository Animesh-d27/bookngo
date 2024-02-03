// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:bookngo/utils/home_screen_images.dart';
import 'package:flutter/material.dart';

class CastCrewCards extends StatelessWidget {
  const CastCrewCards({super.key, required this.imageList, this.text});
  final text;
  final List imageList;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => MovieReviewScreen()));
        },
        child: SizedBox(
            height: 200,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(text,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54)),
                  const SizedBox(height: 2),
                  Expanded(
                      child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: AssetUtil().imgCastCrew.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      width: 110,
                                      height: 110,
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(80)),
                                          image: DecorationImage(
                                              image: imageList[index],
                                              fit: BoxFit.fitHeight))),
                                  const SizedBox(height: 3),
                                  Expanded(
                                    child: Text(
                                        '${AssetUtil().castnames[index]} ',
                                        style: const TextStyle(
                                            fontSize: 13,
                                            color: Colors.black54)),
                                  )
                                ]);
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(width: 10);
                          }))
                ])));
  }
}
