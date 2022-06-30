import 'package:crm_stigeit/pages/show_profile/components/popup_menu.dart';
import 'package:crm_stigeit/pages/show_profile/components/popup_profile.dart';
import 'package:crm_stigeit/pages/signin_relawan_page/signin_relawan.dart';
import 'package:crm_stigeit/styles/consts.dart';
import 'package:crm_stigeit/widget/custom_form.dart';
import 'package:flutter/material.dart';

class ShowProfile extends StatefulWidget {
  const ShowProfile({Key? key}) : super(key: key);

  @override
  State<ShowProfile> createState() => _ShowProfileState();
}

class _ShowProfileState extends State<ShowProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kwhite,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: kblue1,
            ),
          ),
          actions: [PopUpProfil()],
        ),
        body: Container(
          margin: EdgeInsets.only(left: 24, right: 24),
          child: ListView(
            children: [
              Form(
                  child: Column(
                children: [
                  Center(
                      child: Text(
                    'Menampilkan data profile',
                    style: TextStyle(color: kblue1, fontSize: 24),
                  ))
                ],
              ))
            ],
          ),
        ));
  }
}
