import 'package:bookngo/configs/app_color.dart';
import 'package:bookngo/configs/spacing.dart';
import 'package:bookngo/utils/bottomNavBar/book_ticket_bottom_bar.dart';
import 'package:bookngo/utils/constants/string_constants.dart';
import 'package:flutter/material.dart';

class RatingMoviesScreen extends StatefulWidget {
  final List imageList;

  const RatingMoviesScreen({super.key, required this.imageList});

  @override
  State<RatingMoviesScreen> createState() => _RatingMoviesScreenState();
}

class _RatingMoviesScreenState extends State<RatingMoviesScreen> {
  double _currentSliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:
            const BookTicketBottomBar(text: StringConstants.kSubmitNow),
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Container(
                  width: 130,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          image: widget.imageList[2], fit: BoxFit.fitHeight))),
              const Text(StringConstants.kBookNow,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black)),
              const SizedBox(height: spacingBetweenWidgets),
              const Text(StringConstants.kHowWouldYouRate,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
                  const SizedBox(height: spacingBetweenWidgets),

                  Slider(activeColor: AppColor.redTheme,
                value: _currentSliderValue,
                max: 5,
                divisions: 5,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
              const SizedBox(height: spacingBetweenWidgets),
              const Text(StringConstants.kYourRatingMatters,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black54)),
              const SizedBox(height: spacingBetweenWidgets),
              const Text(StringConstants.kTheyHelp,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black54))
            ])));
  }
}
