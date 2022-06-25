import 'package:crm_stigeit/styles/consts.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 200,
      margin: const EdgeInsets.only(left: 44, right: 44, top: 10, bottom: 20),
      decoration: BoxDecoration(
        image:
            const DecorationImage(image: AssetImage('assets/images/Indonesia.png')),
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Color(0XFF00CBFF), Color(0XFF00518F)]),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 24, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: kwhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                'assets/images/logo.png',
                width: 60,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Stige IT',
              style: TextStyle(color: kwhite),
            ),
            const Text(
              'NIK : 1234567890',
              style: TextStyle(color: kwhite),
            )
          ],
        ),
      ),
    );
  }
}
