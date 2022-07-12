import 'package:crm_stigeit/pages/form_update_data/update_data.dart';
import 'package:crm_stigeit/pages/show_profile/components/popup_menu.dart';
import 'package:crm_stigeit/pages/signin_page/signin.dart';
import 'package:crm_stigeit/services/firebase_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';

import '../../../styles/consts.dart';

class PopUpProfil extends StatelessWidget {
  const PopUpProfil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> share() async {
      await FlutterShare.share(
          text: 'Share Link',
          title: 'Share Link',
          linkUrl: 'https://stigeit.com/',
          chooserTitle: 'Pilih Share');
    }

    return PopUpMenus(
      menuList: [
        PopupMenuItem(
            child: ListTile(
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UpdateData()));
              },
              icon: ImageIcon(
                AssetImage('assets/images/user.png'),
                color: kblue1,
              )),
          title: Text(
            'Update',
            style: TextStyle(color: kblue1),
          ),
        )),
        PopupMenuItem(
          child: ListTile(
            leading: IconButton(
                onPressed: share,
                icon: ImageIcon(
                  AssetImage('assets/images/share.png'),
                  color: kblue1,
                )),
            title: Text(
              'Share',
              style: TextStyle(
                color: kblue1,
              ),
            ),
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            leading: IconButton(
                onPressed: () async {
                  await FirebaseServices().signOut();

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInPage()));
                },
                icon: ImageIcon(
                  AssetImage('assets/images/logout.png'),
                  color: kblue1,
                )),
            title: Text(
              'Logout',
              style: TextStyle(color: kblue1),
            ),
          ),
        )
      ],
      icon: Icon(
        Icons.settings,
        color: kblue1,
      ),
    );
  }
}
