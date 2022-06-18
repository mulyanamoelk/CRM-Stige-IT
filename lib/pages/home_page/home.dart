import 'package:carousel_slider/carousel_slider.dart';
import 'package:crm_stigeit/pages/home_page/components/data_dukungan.dart';
import 'package:crm_stigeit/pages/home_page/components/section_carousel.dart';
import 'package:crm_stigeit/pages/home_page/components/section_quick.dart';
import 'package:crm_stigeit/pages/home_page/components/section_title.dart';
import 'package:crm_stigeit/styles/consts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kblue1,
        leading: ImageIcon(AssetImage(
          'assets/images/logo.png',
        )),
        title: Text('StigeIT'),
      ),
      body: Container(
        child: ListView(
          children: [
            SectionTitle(),
            SectionDukungan(),
            SectionQuick(),
            SectionCarousel()
          ],
        ),
      ),
    );
  }
}
