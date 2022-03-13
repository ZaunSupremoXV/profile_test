import 'package:flutter/material.dart';
import 'package:profile_test/app/pages/home/atoms/profile_avatar.dart';
import 'package:profile_test/app/pages/home/molecules/list_skill.dart';
import 'package:profile_test/app/pages/home/molecules/row_contact.dart';
import 'package:profile_test/app/themes/app_style.dart';

import 'atoms/circle_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Center(
              child: Text(
                "Desenvolvedor mobile - Flutter",
                style: AppStyle.title,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const ProfileAvatar(),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Skills",
                style: AppStyle.subtitle,
              ),
            ),
            const ListSkill(),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                " Olá, me chamo Erick X. Vasconcelos. Atualmente trabalho como desenvolvedor sistemas, desenvolvimento Backend e Frontend com Node.Js e mobile utilizando Flutter, trabalhando com Git, Typescript, NodeJS, Adonis, Flutter, Python, entre outros.",
                style: AppStyle.description,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Contato",
                style: AppStyle.subtitle,
              ),
            ),
            RowContact(
              email: 'erick_vasconcelos_contato@outlook.com',
              github: 'https://github.com/ZaunSupremoXV',
              linkedin:
                  'https://www.linkedin.com/in/erick-vasconcelos-50baa8150/',
              phone: '96999999999',
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
