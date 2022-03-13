import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class RowContact extends StatefulWidget {
  String linkedin;
  String github;
  String email;
  String phone;
  RowContact({
    Key? key,
    required this.linkedin,
    required this.github,
    required this.email,
    required this.phone,
  }) : super(key: key);

  @override
  State<RowContact> createState() => _RowContactState();
}

class _RowContactState extends State<RowContact> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {
            launcher(widget.linkedin);
          },
          color: Colors.blue,
          icon: const Icon(FontAwesomeIcons.linkedin),
        ),
        IconButton(
          onPressed: () {
            launcher(widget.github);
          },
          color: Colors.grey,
          icon: const Icon(FontAwesomeIcons.github),
        ),
        IconButton(
          onPressed: () {
            launcher(
                "mailto:${widget.email}?subject=Contato&body=Coloque%20aqui%20sua%20mensagem");
          },
          color: Colors.red,
          icon: const Icon(FontAwesomeIcons.envelope),
        ),
        IconButton(
          onPressed: () {
            launcher("tel:${widget.phone}");
          },
          color: Colors.green,
          icon: const Icon(FontAwesomeIcons.phone),
        ),
      ],
    );
  }

  launcher(String urlOrPhone) async {
    var url = urlOrPhone;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
