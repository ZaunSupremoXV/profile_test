import 'package:flutter/material.dart';

import '../atoms/circle_item.dart';

class ListSkill extends StatefulWidget {
  const ListSkill({Key? key}) : super(key: key);

  @override
  State<ListSkill> createState() => _ListSkillState();
}

class _ListSkillState extends State<ListSkill> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CircleItem(
              title: 'Flutter',
              url: 'assets/images/flutter_logo.png',
            ),
            CircleItem(
              title: 'Docker',
              url: 'assets/images/docker_logo.png',
            ),
            CircleItem(
              title: 'NodeJS !',
              url: 'assets/images/nodejs_logo.png',
            ),
            CircleItem(
              title: 'TypeScript',
              url: 'assets/images/typescript_logo.png',
            ),
            CircleItem(
              title: 'Git',
              url: 'assets/images/git_logo.png',
            ),
            CircleItem(
              title: 'GitHub',
              url: 'assets/images/github_logo.png',
            ),
            CircleItem(
              title: 'HTML 5',
              url: 'assets/images/html5-logo.png',
            ),
            CircleItem(
              title: 'Python',
              url: 'assets/images/python_logo.png',
            ),
            CircleItem(
              title: 'Android',
              url: 'assets/images/android_logo.png',
            ),
            CircleItem(
              title: 'IOS',
              url: 'assets/images/ios_logo.png',
            ),
          ],
        ),
      ),
    );
  }
}
