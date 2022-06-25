import 'package:crm_stigeit/pages/navigation/convex_navigation_bar.dart';
import 'package:crm_stigeit/pages/profil_page/profil.dart';
import 'package:crm_stigeit/pages/signin_page/components/button_signin.dart';
import 'package:crm_stigeit/pages/signin_page/components/form_email_signin.dart';
import 'package:crm_stigeit/pages/signin_page/components/form_password_signin.dart';
import 'package:crm_stigeit/pages/signin_page/components/signup.dart';
import 'package:crm_stigeit/pages/signin_page/components/title_signin.dart';
import 'package:crm_stigeit/styles/consts.dart';
import 'package:crm_stigeit/widget/custom_button.dart';
import 'package:crm_stigeit/widget/custom_form.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shimmer/shimmer.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
  ],
);

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formSignIn = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kwhite,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: kblue1,
              )),
          actions: const [
            Icon(
              Icons.more_vert,
              color: kblue1,
            )
          ],
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 24, right: 24),
              child: Form(
                  key: _formSignIn,
                  child: Column(
                    children: [
                      TitleSignIn(),
                      FormEmailSignIn(),
                      FornPasswordSignIn(),
                      ButtonSignIn(formSignIn: _formSignIn),
                      SectionAccount()
                    ],
                  )),
            )
          ],
        ));
  }
}
