import 'package:flutter/material.dart';
import 'package:profile_test/app/pages/home/molecules/circle_item.dart';

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
        child: Column(
          children: [
            const Center(
              child: Text("Teste de texto"),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("Teste aqui"),
            Padding(
              padding: const EdgeInsets.all(14),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CircleItem(title: '💻', url: 'assets/images/1.png'),
                    CircleItem(title: 'idk !', url: 'assets/images/2.jpg'),
                    CircleItem(title: 'Thoughts !', url: 'assets/images/1.png'),
                    CircleItem(title: 'Fact 1', url: 'assets/images/2.jpg'),
                    CircleItem(title: '✨', url: 'assets/images/1.png'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            RichText(
              text: const TextSpan(text: ""),
            ),
          ],
        ),
      ),
    );
  }
}
