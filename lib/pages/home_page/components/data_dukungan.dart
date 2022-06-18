import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../styles/consts.dart';

class SectionDukungan extends StatefulWidget {
  const SectionDukungan({Key? key}) : super(key: key);

  @override
  State<SectionDukungan> createState() => _SectionDukunganState();
}

class _SectionDukunganState extends State<SectionDukungan> {
  final Uri _url =
      Uri.parse('https://youtube.com/channel/UCPoikUUzvjm0fT8PCoH_BvA');
  void _youtube() async {
    if (!await launchUrl(_url)) throw 'Tidak bisa diluncurkan $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 44, right: 44, top: 20),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: kblue1,
                          child: Image.asset(
                            'assets/images/logo.png',
                            color: kwhite,
                            width: 50,
                          ),
                        ),
                        Text('Tentang')
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: InkWell(
                    onTap: (() {}),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: kblue1,
                          child: Image.asset(
                            'assets/images/pengurus.png',
                            color: kwhite,
                            width: 50,
                          ),
                        ),
                        Text('Pengurus')
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: InkWell(
                    onTap: (() {}),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: kblue1,
                          child: Image.asset(
                            'assets/images/aktivitas.png',
                            color: kwhite,
                            width: 50,
                          ),
                        ),
                        Text('Kegiatan')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: InkWell(
                    onTap: _youtube,
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: kblue1,
                          child: Image.asset(
                            'assets/images/youtube.png',
                            width: 50,
                          ),
                        ),
                        Text('Video')
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: InkWell(
                    onTap: (() {}),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: kblue1,
                          child: Image.asset(
                            'assets/images/pengurus.png',
                            color: kwhite,
                            width: 50,
                          ),
                        ),
                        Text('Ebook')
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: InkWell(
                    onTap: (() {}),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: kblue1,
                          child: Image.asset(
                            'assets/images/aktivitas.png',
                            color: kwhite,
                            width: 50,
                          ),
                        ),
                        Text('Merchandise')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
