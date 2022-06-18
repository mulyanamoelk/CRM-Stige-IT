import 'package:crm_stigeit/pages/signin_relawan_page/components/signature_relawan.dart';
import 'package:crm_stigeit/pages/signin_relawan_page/signature.dart';
import 'package:crm_stigeit/widget/custom_button.dart';
import 'package:dio/dio.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

import '../../../styles/consts.dart';
import '../../../widget/custom_form.dart';

class FormSignInRelawan extends StatefulWidget {
  const FormSignInRelawan({Key? key}) : super(key: key);

  @override
  State<FormSignInRelawan> createState() => _FormSignInRelawanState();
}

class _FormSignInRelawanState extends State<FormSignInRelawan> {
  final GlobalKey<SfSignaturePadState> signatureGlobalKey = GlobalKey();
  void _handleClearButtonPressed() {
    signatureGlobalKey.currentState!.clear();
  }

  @override
  void initState() {
    super.initState();
  }

  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 24, top: 24),
      child: Column(
        children: [
          CustomForm(
              inputType: TextInputType.name,
              hintText: 'Nama Lengkap',
              icons: Icon(
                Icons.person,
                color: kblue1,
              )),
          SizedBox(
            height: 5,
          ),
          CustomForm(
              inputType: TextInputType.emailAddress,
              hintText: 'E-Mail',
              icons: Icon(
                Icons.mail,
                color: kblue1,
              )),
          SizedBox(
            height: 5,
          ),
          CustomForm(
              inputType: TextInputType.datetime,
              hintText: '$date',
              icons: Icon(
                Icons.calendar_month,
                color: kblue1,
              )),
          SizedBox(
            height: 5,
          ),
          CustomForm(
              inputType: TextInputType.number,
              hintText: 'NIK',
              icons: Icon(
                Icons.tag,
                color: kblue1,
              )),
          SizedBox(
            height: 5,
          ),
          CustomForm(
              inputType: TextInputType.phone,
              hintText: ' WhatApp',
              icons: Icon(
                Icons.whatsapp,
                color: kblue1,
              )),
          SizedBox(
            height: 5,
          ),
          CustomForm(
              inputType: TextInputType.phone,
              hintText: 'Telepon',
              icons: Icon(
                Icons.phone_android,
                color: kblue1,
              )),
          SizedBox(
            height: 5,
          ),
          DropdownSearch(
            enabled: true,
            items: [
              "Jawa Barat",
              "Jawa Tengah",
              "Jawa Timur",
              "Aceh",
              "Sumatra Utara"
            ],
            onChanged: print,
            selectedItem: "Jawa Barat",
            validator: (String? item) {
              if (item == null)
                return "Required field";
              else if (item == "Brazil")
                return "Invalid item";
              else
                return null;
            },
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 200,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17), color: kblue1),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignaturesRelawan()));
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: kwhite,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
