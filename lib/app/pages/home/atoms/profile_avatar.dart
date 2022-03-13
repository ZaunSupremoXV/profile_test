import 'package:flutter/material.dart';
import 'package:profile_test/app/themes/app_color.dart';

class ProfileAvatar extends StatefulWidget {
  const ProfileAvatar({Key? key}) : super(key: key);

  @override
  State<ProfileAvatar> createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 80 + 4.0,
      backgroundColor: Colors.grey.shade300,
      child: const CircleAvatar(
        radius: 80,
        backgroundColor: AppColor.backgroundColor,
        child: CircleAvatar(
          radius: 80 - 4.0,
          backgroundImage: AssetImage("assets/images/profile.jpg"),
        ),
      ),
    );
  }
}
