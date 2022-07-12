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
                  Container(
                    width: 280,
                    height: 180,
                    margin: const EdgeInsets.only(
                        left: 44, right: 44, top: 10, bottom: 20),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/images/Indonesia.png')),
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Color(0XFF00CBFF),
                            Color(0XFF00518F)
                          ]),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 80,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: <Color>[
                                Color(0XFF00CBFF),
                                Color(0XFFFFFFFFF),
                              ]),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/images/graduated.png',
                              width: 60,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Stige IT',
                            style: TextStyle(color: kwhite),
                          ),
                          const Text(
                            'NIK : 1234567890',
                            style: TextStyle(color: kwhite),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ));
  }
}
