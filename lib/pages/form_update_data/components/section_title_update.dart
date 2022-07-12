import 'package:flutter/material.dart';

import '../../../styles/consts.dart';

class SectionTitleUpdate extends StatelessWidget {
  const SectionTitleUpdate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 30),
      child: Center(
        child: Text(
          'Update Data Anda',
          style: TextStyle(
              color: kblue1, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
