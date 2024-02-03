import 'package:bookngo/configs/spacing.dart';
import 'package:bookngo/screens/homescreen/widgets/advertisement_container_homescreen.dart';
import 'package:bookngo/screens/homescreen/widgets/carousel_sliders_homescreen.dart';
import 'package:bookngo/screens/homescreen/widgets/recommendationcards/recommendation_card.dart';
import 'package:bookngo/utils/appBar/custom_appbar_homescreen.dart';
import 'package:bookngo/utils/constants/string_constants.dart';
import 'package:bookngo/utils/home_screen_images.dart';
import 'package:flutter/material.dart';

class HomesScreen extends StatelessWidget {
  const HomesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const CustomAppBarHomeScreen(),
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(children: [
              const Divider(thickness: 1),
              Padding(
                  padding: const EdgeInsets.only(
                      right: bodyPadding,
                      left: bodyPadding,
                      bottom: bodyPadding),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CarouselSliderHomeScreen(),
                        const SizedBox(height: spacingBetweenWidgets),
                        AdvertisementScreen(imgListAdd: AssetUtil().imgAdd),
                        const SizedBox(height: spacingBetweenWidgets),
                        RecommendationCardsHomeScreen(
                            text: StringConstants.kRecommendedMovies,
                            imageList: AssetUtil().imgMovies),
                        const SizedBox(height: spacingBetweenWidgets),
                        RecommendationCardsHomeScreen(
                            text: StringConstants.kExploreFunActivities,
                            imageList: AssetUtil().imgEvents),
                        const SizedBox(height: spacingBetweenWidgets),
                        RecommendationCardsHomeScreen(
                            text: StringConstants.kUpcomingEvents,
                            imageList: AssetUtil().imgMovies),
                        const SizedBox(height: spacingBetweenWidgets),
                        RecommendationCardsHomeScreen(
                            text: StringConstants.kExploreFunActivities,
                            imageList: AssetUtil().imgMovies),
                        const SizedBox(height: spacingBetweenWidgets),
                        RecommendationCardsHomeScreen(
                            text: StringConstants.kExploreFunActivities,
                            imageList: AssetUtil().imgMovies),
                        const SizedBox(height: spacingBetweenWidgets),
                        RecommendationCardsHomeScreen(
                            text: StringConstants.kExploreFunActivities,
                            imageList: AssetUtil().imgEvents),
                      ]))
            ])));
  }
}
