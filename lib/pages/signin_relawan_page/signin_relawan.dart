import 'package:crm_stigeit/pages/signin_relawan_page/components/button_relawan.dart';

import 'package:crm_stigeit/pages/signin_relawan_page/components/capture_relawan.dart';
import 'package:crm_stigeit/pages/signin_relawan_page/components/dropdown_agama.dart';
import 'package:crm_stigeit/pages/signin_relawan_page/components/dropdown_gender.dart';
import 'package:crm_stigeit/pages/signin_relawan_page/components/dropdown_goldar.dart';
import 'package:crm_stigeit/pages/signin_relawan_page/components/dropdown_pendidikan.dart';
import 'package:crm_stigeit/pages/signin_relawan_page/components/dropdown_provinsi.dart';
import 'package:crm_stigeit/pages/signin_relawan_page/components/form_date_time.dart';
import 'package:crm_stigeit/pages/signin_relawan_page/components/form_email.dart';
import 'package:crm_stigeit/pages/signin_relawan_page/components/form_name.dart';
import 'package:crm_stigeit/pages/signin_relawan_page/components/form_nik.dart';
import 'package:crm_stigeit/pages/signin_relawan_page/components/form_password.dart';
import 'package:crm_stigeit/pages/signin_relawan_page/components/form_phone.dart';
import 'package:crm_stigeit/pages/signin_relawan_page/components/form_try_password.dart';

import 'package:crm_stigeit/pages/signin_relawan_page/components/form_whatsapp.dart';
import 'package:crm_stigeit/styles/consts.dart';
import 'package:crm_stigeit/widget/custom_form.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SignInRelawan extends StatefulWidget {
  const SignInRelawan({Key? key}) : super(key: key);

  @override
  State<SignInRelawan> createState() => _SignInRelawanState();
}

class _SignInRelawanState extends State<SignInRelawan> {
  final _formkey = GlobalKey<FormState>();
  final format = DateFormat("yyyy-MM-dd");
  bool _isHidePassword = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 24, right: 24),
          child: Form(
              key: _formkey,
              child: Column(
                children: [
                  const FormNIKs(),
                  const FormNames(),
                  const FormEmailR(),
                  const FormPhoneRelawan(),
                  const FormWhatsApp(),
                  FormDateTime(format: format),
                  const Gender(),
                  const DropdownGoldar(),
                  const DropdownAgama(),
                  const DropdownPendidikan(),
                  const DropDownProvinsi(),
                  const CaptureImage(),
                  const FormPassword(),
                  const FormUlangiPassword(),
                  ButtonRelawan(formkey: _formkey)
                ],
              )),
        )
      ],
    );
  }
}
