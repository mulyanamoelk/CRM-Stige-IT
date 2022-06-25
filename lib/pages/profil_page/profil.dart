import 'package:crm_stigeit/pages/signin_page/signin.dart';

import 'package:crm_stigeit/pages/signin_relawan_page/signin_relawan.dart';

import 'package:crm_stigeit/styles/consts.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: kwhite,
            leading: Image.asset('assets/images/logo.png'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInPage()));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: kblue1,
                    ),
                  ))
            ]),
        body: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: kgrey, borderRadius: BorderRadius.circular(17)),
                child: TabBar(
                    labelColor: kwhite,
                    unselectedLabelColor: kblue1,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: kblue1,
                        gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: <Color>[
                              Color(0XFF00CBFF),
                              Color(0XFF00518F)
                            ])),
                    tabs: const <Widget>[
                      Tab(
                        text: 'Daftar Anggota',
                      ),
                      Tab(
                        text: 'Daftar Relawan',
                      )
                    ]),
              ),
              const Expanded(
                child: TabBarView(
                    children: <Widget>[SignInRelawan(), SignInRelawan()]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
