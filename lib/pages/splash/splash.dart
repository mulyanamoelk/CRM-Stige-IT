import 'dart:async';

import 'package:crm_stigeit/pages/splash_second/splash_second.dart';
import 'package:crm_stigeit/styles/consts.dart';
import 'package:flutter/material.dart';

class SplashFirst extends StatefulWidget {
  const SplashFirst({Key? key}) : super(key: key);

  @override
  State<SplashFirst> createState() => _SplashFirstState();
}

class _SplashFirstState extends State<SplashFirst> {
  @override
  void initState() {
    super.initState();
    SplashFirst();
  }

  @override
  SplashFirst() async {
    var duration = const Duration(seconds: 3);
    Timer(duration, () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const SplashSecond()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 229),
              child: Center(
                child: Image.asset(
                  'assets/images/stigeit.png',
                  width: 110,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                'Sistem Pemenangan legislatif',
                style: TextStyle(
                    color: kblue1, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
      ]),
    );
  }
}
