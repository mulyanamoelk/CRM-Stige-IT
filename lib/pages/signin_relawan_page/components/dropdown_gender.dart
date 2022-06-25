import 'package:flutter/material.dart';

import '../../../styles/consts.dart';

class Gender extends StatefulWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  late String newValue;
  var genders = ["Laki-laki", "Perempuan"];
  String selectedGender = "Laki-laki";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 56,
        child: DropdownButtonFormField(
          iconSize: 30,
          icon: const ImageIcon(
            AssetImage('assets/images/gender.png'),
            color: kblue1,
          ),
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: const BorderSide(color: kgrey, width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: const BorderSide(color: kblue1, width: 1))),
          items: genders
              .map((String genders) => DropdownMenuItem<String>(
                  value: genders, child: Text(genders)))
              .toList(),
          value: selectedGender,
          onChanged: (newValue) {
            setState(() {});
          },
        ),
      ),
    );
  }
}
