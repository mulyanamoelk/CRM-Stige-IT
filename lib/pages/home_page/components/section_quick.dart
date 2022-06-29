import 'package:crm_stigeit/pages/profil_page/profil.dart';
import 'package:crm_stigeit/pages/signin_relawan_page/signin_relawan.dart';
import 'package:flutter/material.dart';

import '../../../styles/consts.dart';

class SectionQuick extends StatelessWidget {
  const SectionQuick({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/stopwatch.png',
                  width: 100,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: kblue1),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfilePage()));
                      },
                      child: const Text(
                        'Quick Count',
                        style: TextStyle(
                            color: kwhite,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/statistics.png',
                  width: 100,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: kblue1),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Real Count',
                        style: TextStyle(
                            color: kwhite,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
