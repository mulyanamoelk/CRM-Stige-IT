import 'package:crm_stigeit/pages/signin_relawan_page/signin_relawan.dart';
import 'package:crm_stigeit/services/firebase_services.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../styles/consts.dart';
import '../../navigation/convex_navigation_bar.dart';

class ButtonGoogleSignIn extends StatefulWidget {
  const ButtonGoogleSignIn({Key? key}) : super(key: key);

  @override
  State<ButtonGoogleSignIn> createState() => _ButtonGoogleSignInState();
}

class _ButtonGoogleSignInState extends State<ButtonGoogleSignIn> {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  @override
  Widget build(BuildContext context) {
    GoogleSignInAccount? user = _googleSignIn.currentUser;
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 50,
      decoration: BoxDecoration(
          color: kwhite,
          border: Border.all(color: kblue1, width: 2),
          borderRadius: BorderRadius.circular(17)),
      child: InkWell(
        onTap: () async {
          await FirebaseServices().signInWithGoogle();

          setState(() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignInRelawan()));
          });
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
