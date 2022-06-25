import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../styles/consts.dart';

class TitleSignIn extends StatelessWidget {
  const TitleSignIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 100),
      child: const Center(
          child: Shimmer(
              gradient: LinearGradient(
                  colors: [Color(0XFF00CBFF), Color(0XFF00518F)]),
              child: Text(
                'Selamat Datang',
                style: TextStyle(
                    color: kblue1, fontSize: 24, fontWeight: FontWeight.bold),
              ))),
    );
  }
}
