import 'package:flutter/material.dart';

import '../../../styles/consts.dart';
import '../../profil_page/profil.dart';

class SectionAccount extends StatelessWidget {
  const SectionAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Belum punya akun ?',
            style: TextStyle(
              color: kblue1,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
              child: const Text(
                ' Sign UP',
                style: TextStyle(color: kblue2, fontSize: 14),
              ))
        ],
      ),
    );
  }
}
