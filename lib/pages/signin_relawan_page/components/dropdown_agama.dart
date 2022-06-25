import 'package:flutter/material.dart';

import '../../../styles/consts.dart';

class DropdownAgama extends StatefulWidget {
  const DropdownAgama({Key? key}) : super(key: key);

  @override
  State<DropdownAgama> createState() => _DropdownAgamaState();
}

class _DropdownAgamaState extends State<DropdownAgama> {
  late String newValueAgama;
  var agama = [
    "Islam",
    "Kristen Protestan",
    "Kristen Katolik",
    "Hindu",
    "Buddha",
    "Konghucu"
  ];
  String selectedAgama = 'Islam';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 56,
        child: DropdownButtonFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.home),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: const BorderSide(color: kgrey, width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: const BorderSide(color: kblue1, width: 1))),
            onChanged: (newValueAgama) {
              setState(() {});
            },
            value: selectedAgama,
            items: agama
                .map((String agama) =>
                    DropdownMenuItem(value: agama, child: Text(agama)))
                .toList()),
      ),
    );
  }
}
