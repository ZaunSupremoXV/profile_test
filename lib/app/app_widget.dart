import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:profile_test/app/pages/home/home_page.dart';
import 'package:profile_test/app/themes/app_color.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Perfil',
      scrollBehavior: const MaterialScrollBehavior().copyWith(dragDevices: {
        PointerDeviceKind.mouse,
        PointerDeviceKind.touch,
      }),
      debugShowCheckedModeBanner: false,
      theme: AppColor.defaultTheme,
      home: const HomePage(),
    );
  }
}
