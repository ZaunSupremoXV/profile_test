import 'package:flutter/material.dart';

import '../../../themes/app_color.dart';

class CircleItem extends StatefulWidget {
  String title;
  String url;
  CircleItem({
    Key? key,
    required this.title,
    required this.url,
  }) : super(key: key);

  @override
  State<CircleItem> createState() => _CircleItemState();
}

class _CircleItemState extends State<CircleItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                // color: AppColor.backgroundColor,
                shape: BoxShape.circle,
              ),
              height: 75,
              width: 75,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(widget.url),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              widget.title,
            )
          ],
        ),
        const SizedBox(
          width: 12,
        )
      ],
    );
  }
}
