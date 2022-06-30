import 'package:flutter/material.dart';

import '../../../styles/consts.dart';
import '../../navigation/convex_navigation_bar.dart';

class ButtonGoogleSignIn extends StatelessWidget {
  const ButtonGoogleSignIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 56,
      decoration: BoxDecoration(
          color: kwhite,
          border: Border.all(color: kblue1, width: 2),
          borderRadius: BorderRadius.circular(17)),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ConvexNavigationBars()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/google.png',
              width: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Google',
              style: TextStyle(color: kblue1, fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
