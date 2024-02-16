import 'package:bookngo/configs/app_color.dart';
import 'package:bookngo/configs/spacing.dart';
import 'package:bookngo/screens/homeScreen/widgets/recommendationcards/recommendation_container.dart';
import 'package:bookngo/screens/myProfileScreen/widgets/textFormFieldWidget/my_Profile_Text_Form_Field.dart';
import 'package:bookngo/utils/bottomNavBar/bottom_nav_bar.dart';
import 'package:bookngo/utils/constants/string_constants.dart';
import 'package:bookngo/utils/home_screen_images.dart';
import 'package:flutter/material.dart';

class EditProfileScreeen extends StatelessWidget {
  const EditProfileScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.lightestBlue,
        appBar: AppBar(),
        bottomNavigationBar: const BottomNavBar(),
        body: Padding(
            padding: const EdgeInsets.only(
                top: bodyPadding, left: bodyPadding, right: bodyPadding),
            child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(children: [
                  RecommendationContainer(
                      imageList: AssetUtil().imgEvents,
                      text: StringConstants.kExploreFunActivities),
                  const SizedBox(height: 10),
                  Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))),
                      child: const Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [
                        MyProfileTextFormField(
                            hintText: 'Entre first name here'),
                        SizedBox(height: 10),
                        MyProfileTextFormField(
                            hintText: 'Entre last name here'),
                        SizedBox(height: 10),
                        MyProfileTextFormField(
                            hintText: 'Entre last name here'),
                        SizedBox(height: 10)
                      ])),
                  const SizedBox(height: 10),

                  Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))),
                      child: const Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [

                        MyProfileTextFormField(
                            hintText: 'Entre first name here'),
                        SizedBox(height: 10),
                        MyProfileTextFormField(
                            hintText: 'Entre last name here'),
                        SizedBox(height: 10),
                        MyProfileTextFormField(
                            hintText: 'Entre last name here'),
                        SizedBox(height: 10)
                      ])),
                  const SizedBox(height: 10),

                  Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))),
                      child: const Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [
                        MyProfileTextFormField(
                            hintText: 'Entre first name here'),
                        SizedBox(height: 10),
                        MyProfileTextFormField(
                            hintText: 'Entre last name here'),
                        SizedBox(height: 10),
                        MyProfileTextFormField(
                            hintText: 'Entre last name here'),
                        SizedBox(height: 10)
                      ]))
                ]))));
  }
}
