import 'package:bookngo/utils/home_screen_images.dart';
import 'package:flutter/material.dart';

class TopOffersCard extends StatelessWidget {
  const TopOffersCard({super.key, this.text});

  final text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => MovieReviewScreen()));
        },
        child: SizedBox(
            height: 80,
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
                            return Container(
                                width: 250,
                                decoration: const BoxDecoration(
                                    color: Colors.black26,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10))),
                                child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: 40,
                                              height: 40,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              20)))),
                                          Container(
                                              width: 180,
                                              height: 40,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5)))),
                                        ])));
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(width: 10);
                          }))
                ])));
  }
}
