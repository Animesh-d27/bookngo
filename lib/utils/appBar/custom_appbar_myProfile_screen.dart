import 'package:bookngo/screens/myProfileScreen/editProfileScreen/edit_profile_screen.dart';
import 'package:flutter/material.dart';

class CustomAppBarMyProfileScreen extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarMyProfileScreen({super.key});

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
                      title: const Text('Hi !',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w900)),
                      subtitle: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>  EditProfileScreeen()));
                          },
                          child: const Text('Edit Profile >',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal)))))
            ]));
  }

  @override
  Size get preferredSize => const Size.fromHeight(90);
}
