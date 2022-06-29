import 'package:crm_stigeit/styles/consts.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomInkwel extends StatelessWidget {
  final String images, Texts;
  final Function() onTaps;
  const CustomInkwel(
      {Key? key,
      required this.images,
      required this.Texts,
      required this.onTaps})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 85,
      height: 85,
      child: InkWell(
        onTap: onTaps,
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: kblue1,
              child: Image.asset(
                images,
                width: 30,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              Texts,
            )
          ],
        ),
      ),
    );
  }
}
