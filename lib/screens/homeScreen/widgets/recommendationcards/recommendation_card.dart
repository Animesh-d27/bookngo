import 'package:bookngo/screens/movieReviewScreen/movie_review_screen.dart';
import 'package:bookngo/utils/home_screen_images.dart';
import 'package:flutter/material.dart';

class RecommendationCardsHomeScreen extends StatelessWidget {
  final List imageList;
  final String text;

  const RecommendationCardsHomeScreen(
      {super.key,
      required this.imageList,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54)),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MovieReviewScreen()));
              },
              child: SizedBox(
                  height: 270,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: AssetUtil().imgEvents.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  width: 130,
                                  height: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      image: DecorationImage(
                                          image: imageList[index],
                                          fit: BoxFit.fitHeight)
                                  )),
                              const SizedBox(height: 3),
                              Chip(
                                  side: const BorderSide(
                                      color: Colors.transparent),
                                  visualDensity: VisualDensity.compact,
                                  labelPadding: EdgeInsets.zero,
                                  label: Text(
                                      '${AssetUtil().likes[index]}     Likes',
                                      style: const TextStyle(
                                          fontSize: 13, color: Colors.black54)),
                                  avatar: const Icon(Icons.thumb_up_alt_rounded,
                                      color: Colors.green),
                                  backgroundColor: Colors.grey[200],
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10)),
                              const SizedBox(height: 3),
                              Text(AssetUtil().movienames[index],
                                  style: const TextStyle(
                                      fontSize: 13, color: Colors.black54))
                            ]);
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 10);
                      })))
        ]);
  }
}
