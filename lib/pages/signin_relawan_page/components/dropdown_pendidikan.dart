import 'package:flutter/material.dart';

import '../../../styles/consts.dart';

class DropdownPendidikan extends StatefulWidget {
  const DropdownPendidikan({Key? key}) : super(key: key);

  @override
  State<DropdownPendidikan> createState() => _DropdownPendidikanState();
}

class _DropdownPendidikanState extends State<DropdownPendidikan> {
  late String newValuePendidikan;
  String selectedPendidikan = "SD";
  var pendidikan = ["-", "SD", "SMP", "SMA/SMK", "S1", "S2", "S3"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 56,
        child: DropdownButtonFormField(
            icon: const ImageIcon(
              AssetImage('assets/images/graduated.png'),
              color: kblue1,
            ),
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: const BorderSide(color: kgrey, width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: const BorderSide(color: kblue1, width: 1))),
            onChanged: (newValuePendidikan) {
              setState(() {});
            },
            value: selectedPendidikan,
            items: pendidikan
                .map((String pendidikan) => DropdownMenuItem(
                    value: pendidikan, child: Text(pendidikan)))
                .toList()),
      ),
    );
  }
}
