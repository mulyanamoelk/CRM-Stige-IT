import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:crm_stigeit/pages/home_page/home.dart';
import 'package:crm_stigeit/pages/profil_page/profil.dart';
import 'package:crm_stigeit/pages/scan_barcode/scan.dart';

import 'package:crm_stigeit/styles/consts.dart';
import 'package:flutter/material.dart';

class ConvexNavigationBars extends StatefulWidget {
  const ConvexNavigationBars({Key? key}) : super(key: key);

  @override
  State<ConvexNavigationBars> createState() => _ConvexNavigationBarsState();
}

class _ConvexNavigationBarsState extends State<ConvexNavigationBars> {
  late int index;
  List pages = [
    const HomePage(),
    const ScanBarcode(),
    const ProfilePage(),
  ];

  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: ConvexAppBar(
          backgroundColor: kwhite,
          curveSize: 12,
          color: kblue1,
          elevation: 0,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: const [
            TabItem(
                title: 'Home',
                icon: Icon(
                  Icons.home,
                  color: kblue1,
                )),
            TabItem(
              icon: Icon(
                Icons.qr_code_scanner_rounded,
                color: kblue1,
              ),
              title: 'Scan',
            ),
            TabItem(
                icon: Icon(
                  Icons.person,
                  color: kblue1,
                ),
                title: 'Profile'),
          ]),
    );
  }
}
