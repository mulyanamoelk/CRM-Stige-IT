import 'package:crm_stigeit/pages/navigation/convex_navigation_bar.dart';
import 'package:crm_stigeit/pages/signin_relawan_page/components/signature_relawan.dart';
import 'package:crm_stigeit/styles/consts.dart';
import 'package:flutter/material.dart';

class ButtonRelawan extends StatelessWidget {
  const ButtonRelawan({
    Key? key,
    required GlobalKey<FormState> formkey,
  })  : _formkey = formkey,
        super(key: key);

  final GlobalKey<FormState> _formkey;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      width: 300,
      decoration:
          BoxDecoration(color: kblue1, borderRadius: BorderRadius.circular(17)),
      child: TextButton(
          onPressed: () {
            if (_formkey.currentState!.validate()) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignaturesRelawan()));
            }
          },
          child: const Text(
            'Next',
            style: TextStyle(color: kwhite, fontWeight: FontWeight.bold),
          )),
    );
  }
}
