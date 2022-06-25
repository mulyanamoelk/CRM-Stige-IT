import 'package:crm_stigeit/pages/home_page/components/data_dukungan.dart';
import 'package:crm_stigeit/pages/home_page/components/section_carousel.dart';
import 'package:crm_stigeit/pages/home_page/components/section_quick.dart';
import 'package:crm_stigeit/pages/home_page/components/section_title.dart';
import 'package:crm_stigeit/styles/consts.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kblue1,
        leading: Image.asset('assets/images/logo.png'),
        title: const Shimmer(
            gradient: LinearGradient(
                colors: <Color>[Color(0XFFFFFFFF), Color(0XFF00518F)]),
            child: Text('StigeIT')),
      ),
      body: Container(
        child: ListView(
          children: const [
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
