import 'package:crm_stigeit/pages/navigation/convex_navigation_bar.dart';
import 'package:crm_stigeit/pages/signin_page/signin.dart';
import 'package:crm_stigeit/styles/consts.dart';
import 'package:flutter/material.dart';

class SplashSecond extends StatefulWidget {
  const SplashSecond({Key? key}) : super(key: key);

  @override
  State<SplashSecond> createState() => _SplashSecondState();
}

class _SplashSecondState extends State<SplashSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 100,
              left: 24,
              child: Image.asset(
                'assets/images/splash.png',
                width: 352,
              ),
            ),
            Positioned(
              top: 450,
              right: 100,
              child: Container(
                margin: EdgeInsets.only(top: 24),
                child: Center(
                  child: Text(
                    'Membantu Anda \n  Memenangkan \n PILKADA ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kblue1,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 30,
                right: 30,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ConvexNavigationBars()));
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(
                        color: kblue1,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
