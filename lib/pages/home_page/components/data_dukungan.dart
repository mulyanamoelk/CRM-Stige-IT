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
      margin: const EdgeInsets.only(left: 44, right: 44, top: 20),
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
                            width: 50,
                          ),
                        ),
                        const Text('Tentang')
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
                            'assets/images/team-management.png',
                            width: 30,
                          ),
                        ),
                        const Text('Paslon')
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
                            'assets/images/conversation.png',
                            width: 30,
                          ),
                        ),
                        const Text('Kegiatan')
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
                            width: 25,
                          ),
                        ),
                        const Text('Video')
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
                            'assets/images/books.png',
                            width: 25,
                          ),
                        ),
                        const Text('Data Saksi')
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
                            'assets/images/storage.png',
                            width: 30,
                          ),
                        ),
                        const Text('Data TPS')
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
