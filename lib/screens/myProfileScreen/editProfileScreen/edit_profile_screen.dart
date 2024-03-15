import 'package:bookngo/configs/spacing.dart';
import 'package:bookngo/screens/homeScreen/widgets/recommendationcards/recommendation_container.dart';
import 'package:bookngo/screens/myProfileScreen/widgets/textFormFieldWidget/my_Profile_Text_Form_Field.dart';
import 'package:bookngo/utils/bottomNavBar/save_edit_profile_bottom_bar.dart';
import 'package:bookngo/utils/constants/string_constants.dart';
import 'package:bookngo/utils/home_screen_images.dart';
import 'package:flutter/material.dart';

class EditProfileScreeen extends StatelessWidget {
  const EditProfileScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue.shade50,
        appBar: AppBar(),
        bottomNavigationBar: SaveEditProfileBottomBar(),
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
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Mobile Number',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87)),
                                SizedBox(height: spacingBetweenWidgets),
                                MyProfileTextFormField(
                                    hintText: 'Get Tickets on Whatsapp/SMS..'),
                                SizedBox(height: spacingBetweenWidgets),
                                Text('Email Address',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87)),
                                SizedBox(height: spacingBetweenWidgets),
                                MyProfileTextFormField(
                                    hintText: 'Entre Email here...'),
                                SizedBox(height: spacingBetweenWidgets)
                              ]))),
                  const SizedBox(height: 10),
                  Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Personal Details',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87)),
                                SizedBox(height: spacingBetweenWidgets),
                                Text('First Name',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black54)),
                                MyProfileTextFormField(
                                    hintText: 'Entre first name here'),
                                SizedBox(height: spacingBetweenWidgets),
                                Text('First Name',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black54)),
                                MyProfileTextFormField(
                                    hintText: 'Entre middle name here'),
                                SizedBox(height: spacingBetweenWidgets),
                                Text('First Name',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black54)),
                                MyProfileTextFormField(
                                    hintText: 'Entre last name here'),
                                SizedBox(height: spacingBetweenWidgets)
                              ]))),
                  const SizedBox(height: 10),
                  Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Address (Optional)',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87)),
                                SizedBox(height: spacingBetweenWidgets),
                                Text('Area Pincode',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black54)),
                                MyProfileTextFormField(
                                    hintText: 'Entre Area Pincode eg.440013'),
                                SizedBox(height: spacingBetweenWidgets),
                                Text('Address Line 1',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black54)),
                                MyProfileTextFormField(
                                    hintText: 'Flat No.,House No.,Building...'),
                                SizedBox(height: spacingBetweenWidgets),
                                Text('Address Line 2',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black54)),
                                MyProfileTextFormField(
                                    hintText: 'Sector,Colony,Area,Street...'),
                                SizedBox(height: spacingBetweenWidgets),
                                Text('Landmark',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black54)),
                                MyProfileTextFormField(
                                    hintText: 'Eg.B/h Ganraj Lawn'),
                                SizedBox(height: spacingBetweenWidgets),
                                Text('First Name',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black54)),
                                MyProfileTextFormField(
                                    hintText: 'Entre last name here'),
                                SizedBox(height: spacingBetweenWidgets),
                                Text('First Name',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black54)),
                                MyProfileTextFormField(
                                    hintText: 'Entre last name here'),
                                SizedBox(height: spacingBetweenWidgets)
                              ]))),
                  const SizedBox(height: 10),
                  Text('I agree to the Terms &Conditions and Privacy Policy.',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.black54))
                ]))));
  }
}
