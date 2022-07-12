import 'package:crm_stigeit/styles/consts.dart';
import 'package:flutter/material.dart';

class ImageUpdate extends StatefulWidget {
  const ImageUpdate({Key? key}) : super(key: key);

  @override
  State<ImageUpdate> createState() => _ImageUpdateState();
}

class _ImageUpdateState extends State<ImageUpdate> {
  final double profileHeight = 80;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CircleAvatar(
          backgroundColor: kgrey,
          backgroundImage: AssetImage(
            'assets/images/graduated.png',
          ),
          radius: profileHeight),
      Positioned(
        right: 20,
        bottom: 20,
        child: InkWell(
          onTap: () {},
          child: Icon(
            Icons.camera_alt,
            color: Colors.white,
            size: 20,
          ),
        ),
      )
    ]);
  }
}
