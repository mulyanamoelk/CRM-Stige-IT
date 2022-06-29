import 'package:crm_stigeit/widget/custom_inkwell.dart';
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
      margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomInkwel(
                  images: 'assets/images/logo.png',
                  Texts: 'Tentang',
                  onTaps: () async {
                    await openUrl('https://stigeit.com/',
                        forceWebView: true, enableJavaScript: true);
                  }),
              CustomInkwel(
                  images: 'assets/images/paslon.png',
                  Texts: 'Paslon',
                  onTaps: _youtube),
              CustomInkwel(
                  images: 'assets/images/witness.png',
                  Texts: 'Data Saksi',
                  onTaps: _youtube),
              CustomInkwel(
                  images: 'assets/images/storage.png',
                  Texts: 'Data TPS',
                  onTaps: () async {
                    await openUrl(
                        'https://youtube.com/channel/UCPoikUUzvjm0fT8PCoH_BvA');
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomInkwel(
                  images: 'assets/images/youtube.png',
                  Texts: 'Video',
                  onTaps: () async {
                    await openUrl(
                        'https://youtube.com/channel/UCPoikUUzvjm0fT8PCoH_BvA',
                        forceWebView: true,
                        enableJavaScript: true);
                  }),
              CustomInkwel(
                  images: 'assets/images/conversation.png',
                  Texts: 'Kegiatan',
                  onTaps: _youtube),
              CustomInkwel(
                  images: 'assets/images/operator.png',
                  Texts: 'Operator',
                  onTaps: _youtube),
              CustomInkwel(
                  images: 'assets/images/budget.png',
                  Texts: 'Finance',
                  onTaps: () async {
                    await openUrl('https://web.telegram.org/k/#-613508795');
                  }),
            ],
          ),
        ],
      ),
    );
  }
}

Future<void> openUrl(String url,
    {bool forceWebView = false, bool enableJavaScript = false}) async {
  {
    if (await canLaunch(url)) {}
    await launch(url,
        forceWebView: forceWebView, enableJavaScript: enableJavaScript);
  }
}
