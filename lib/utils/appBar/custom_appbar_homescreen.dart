import 'package:bookngo/screens/myProfileScreen/my_profile_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomAppBarHomeScreen extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        height: 70,
        color: Colors.white, // Custom background color
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  width: 280,
                  child: ListTile(
                      title: const Text('It All Starts Here',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w900)),
                      subtitle: GestureDetector(
                          onTap: () {
                            if (kDebugMode) {
                              print('press');
                            }
                          },
                          child: const Text('Nagpur',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal))))),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        highlightColor: Colors.transparent,
                        iconSize: 25,
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                        color: Colors.black54),
                    IconButton(
                        highlightColor: Colors.transparent,
                        iconSize: 25,
                        icon: const Icon(Icons.person_2_rounded),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const MyProfileScreen()));
                        },
                        color: Colors.black54),
                    IconButton(
                        iconSize: 25,
                        highlightColor: Colors.transparent,
                        icon: const Icon(Icons.qr_code_scanner_rounded),
                        onPressed: () {},
                        color: Colors.black54),
                  ])
            ]));
  }

  @override
  Size get preferredSize => const Size.fromHeight(90);
}
