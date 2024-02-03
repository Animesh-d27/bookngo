import 'package:bookngo/configs/spacing.dart';
import 'package:bookngo/screens/homescreen/widgets/recommendationcards/recommendation_card.dart';
import 'package:bookngo/screens/movieReviewScreen/widgets/movie_image_container.dart';
import 'package:bookngo/screens/movieReviewScreen/widgets/quality_display_card.dart';
import 'package:bookngo/screens/movieReviewScreen/widgets/rate_now_container.dart';
import 'package:bookngo/screens/movieReviewScreen/widgets/show_cast_crew_card.dart';
import 'package:bookngo/screens/movieReviewScreen/widgets/ticket_booked_status_container.dart';
import 'package:bookngo/screens/movieReviewScreen/widgets/top_offers_card.dart';
import 'package:bookngo/utils/appBar/custom_appbar_common.dart';
import 'package:bookngo/utils/bottomNavBar/book_ticket_bottom_bar.dart';
import 'package:bookngo/utils/constants/string_constants.dart';
import 'package:bookngo/utils/home_screen_images.dart';
import 'package:flutter/material.dart';

class MovieReviewScreen extends StatelessWidget {
  const MovieReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: const BookTicketBottomBar(),
        appBar: const CustomAppBarCommon(),
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
                padding: const EdgeInsets.only(
                    right: bodyPadding, left: bodyPadding, bottom: bodyPadding),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const MovieImageContainer(),
                      const SizedBox(height: spacingBetweenWidgets),
                      const RateNowContainer(),
                      const SizedBox(height: 3),
                      const QualityDisplayCard(),
                      const SizedBox(height: 13),
                      const TicketBookedStatusContainer(),
                      const Divider(),
                      const TopOffersCard(text: StringConstants.kTopOffersForYou),
                      CastCrewCards(
                          imageList: AssetUtil().imgCastCrew,
                          text: StringConstants.kCREW),
                      const SizedBox(height: spacingBetweenWidgets),
                      CastCrewCards(
                          imageList: AssetUtil().imgMovies,
                          text: StringConstants.kCAST),
                      const SizedBox(height: spacingBetweenWidgets),
                      RecommendationCardsHomeScreen(
                          imageList: AssetUtil().imgEvents,
                          text: StringConstants.kYouMightaAlsoLike)
                    ]))));
  }
}
