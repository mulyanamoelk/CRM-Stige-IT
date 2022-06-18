import 'package:crm_stigeit/pages/home_page/home.dart';
import 'package:crm_stigeit/pages/navigation/convex_navigation_bar.dart';
import 'package:crm_stigeit/pages/signin_page/signin.dart';
import 'package:crm_stigeit/styles/consts.dart';
import 'package:crm_stigeit/widget/custom_button.dart';
import 'package:crm_stigeit/widget/custom_form.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: kblue1,
              ))
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 100, bottom: 30),
            child: Center(
              child: Text(
                'Masukan identitas anda',
                style: TextStyle(
                    color: kblue1, fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          FormName(),
          FormNIK(),
          FormPhone(),
          FormEmail(),
          FormPassword(),
          ButtonSignIn(),
          SectionAccountSignUp()
        ],
      ),
    );
  }
}

class SectionAccountSignUp extends StatelessWidget {
  const SectionAccountSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Belum Punya akun?',
            style: TextStyle(color: kblue1, fontSize: 14),
          ),
          SizedBox(
            width: 4,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInPage()));
              },
              child: Text(
                'Sign IN',
                style: TextStyle(
                    fontSize: 14, color: kblue2, fontWeight: FontWeight.bold),
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
      padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
      child: CustomButton(
          text: 'Submit',
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ConvexNavigationBars()));
          }),
    );
  }
}

class FormPassword extends StatelessWidget {
  const FormPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
      child: CustomForm(
          inputType: TextInputType.visiblePassword,
          obscure: true,
          hintText: 'Password',
          icons: Icon(
            Icons.lock,
            color: kblue1,
          )),
    );
  }
}

class FormEmail extends StatelessWidget {
  const FormEmail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
      child: CustomForm(
          inputType: TextInputType.emailAddress,
          hintText: 'StigeIt@gmail.com',
          icons: Icon(
            Icons.mail,
            color: kblue1,
          )),
    );
  }
}

class FormPhone extends StatelessWidget {
  const FormPhone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
      child: CustomForm(
          inputType: TextInputType.phone,
          hintText: '+6289662548161',
          icons: Icon(
            Icons.phone,
            color: kblue1,
          )),
    );
  }
}

class FormNIK extends StatelessWidget {
  const FormNIK({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
      child: CustomForm(
          inputType: TextInputType.number,
          hintText: 'Masukan NIK',
          icons: Icon(
            Icons.tag,
            color: kblue1,
          )),
    );
  }
}

class FormName extends StatelessWidget {
  const FormName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: CustomForm(
          inputType: TextInputType.name,
          hintText: 'Masukan Nama',
          icons: Icon(
            Icons.person,
            color: kblue1,
          )),
    );
  }
}
