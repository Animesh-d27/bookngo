import 'package:bookngo/utils/appBar/custom_appbar_myProfile_screen.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarMyProfileScreen()
    );
  }
}
