import 'package:crm_stigeit/pages/navigation/convex_navigation_bar.dart';
import 'package:crm_stigeit/pages/signup_page/signup.dart';
import 'package:crm_stigeit/services/firebase_services.dart';
import 'package:crm_stigeit/styles/consts.dart';
import 'package:crm_stigeit/widget/custom_button.dart';
import 'package:crm_stigeit/widget/custom_form.dart';
import 'package:firebase_core/firebase_core.dart';
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
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: kblue1,
              )),
          actions: [
            Icon(
              Icons.more_vert,
              color: kblue1,
            )
          ],
        ),
        body: Container(
            child: ListView(
          children: [
            TitleSignIn(),
            FormName(),
            FormPsw(),
            SizedBox(
              height: 50,
            ),
            ButtonSignIn(),
            SectionAccount()
          ],
        )));
  }
}

class SectionAccount extends StatelessWidget {
  const SectionAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Belum punya akun ?',
            style: TextStyle(
              color: kblue1,
              fontSize: 14,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpPage()));
              },
              child: Text(
                ' Sign UP',
                style: TextStyle(color: kblue2, fontSize: 14),
              ))
        ],
      ),
    );
  }
}

class ButtonSignIn extends StatelessWidget {
  const ButtonSignIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: CustomButton(
          text: 'SignIn',
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ConvexNavigationBars()));
          }),
    );
  }
}

class FormPsw extends StatelessWidget {
  const FormPsw({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomForm(
            obscure: true,
            inputType: TextInputType.visiblePassword,
            hintText: 'Masukan Password',
            icons: Icon(
              Icons.lock,
              color: kblue1,
            )),
        SizedBox(
          height: 5,
        ),
        Text(
          'Jangan lupa masukan password !',
          style: TextStyle(color: kblue1, fontSize: 12),
        )
      ]),
    );
  }
}

class FormName extends StatelessWidget {
  const FormName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 24, top: 40),
      child: CustomForm(
          inputType: TextInputType.name,
          hintText: 'Masukan nama lengkap',
          icons: Icon(
            Icons.person,
            color: kblue1,
          )),
    );
  }
}

class TitleSignIn extends StatelessWidget {
  const TitleSignIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100),
      child: Center(
          child: Shimmer(
              child: Text(
                'Selamat Datang',
                style: TextStyle(
                    color: kblue1, fontSize: 24, fontWeight: FontWeight.bold),
              ),
              gradient: LinearGradient(
                  colors: [Color(0XFF00CBFF), Color(0XFF00518F)]))),
    );
  }
}
