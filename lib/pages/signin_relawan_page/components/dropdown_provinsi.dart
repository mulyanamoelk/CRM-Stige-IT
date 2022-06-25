import 'package:flutter/material.dart';

import '../../../styles/consts.dart';

class DropDownProvinsi extends StatefulWidget {
  const DropDownProvinsi({Key? key}) : super(key: key);

  @override
  State<DropDownProvinsi> createState() => _DropDownProvinsiState();
}

class _DropDownProvinsiState extends State<DropDownProvinsi> {
  var provinsi = [
    "Jawa Barat",
    "Jawa Tengah",
    "Jawa Timur",
    "Aceh",
    "Bali",
    "Bangka Belitung",
    "Banten",
    "Bengkulu",
    "Kalimantan Tengah",
    "Sulawesi Tengah",
    "Kalimantan Timur",
    "Nusa Tenggara Timur",
    "Gorontalo",
    "Jakarta",
    "Jambi",
    "Lampung",
    "Maluku",
    "Sulawesi Utara",
    "Sumatera utara",
    "Papua",
    "Riau",
    "Kepulauan Riau",
    "Sulawesi Tenggara",
    "Kalimantan Selatan",
    "Sulawesi Selatan",
    "Sumatra Selatan",
    'Kalimantan Barat',
    'Nusa Tenggara Barat',
    'Papua Barat',
    'Kalimantan Barat',
    'Nusa Tenggara Barat',
    'Papua Barat',
    'Sulawesi Barat',
    'Sumatera Barat',
    'Yogyakarta',
    'Kalimantan Utara',
    'Maluku Utara',
  ];
  String selectedProvinsi = "Jawa Barat";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 56,
      child: DropdownButtonFormField(
          value: selectedProvinsi,
          icon: const ImageIcon(
            AssetImage('assets/images/pin.png'),
            color: kblue1,
          ),
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: const BorderSide(color: kgrey, width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: const BorderSide(color: kblue1, width: 1))),
          items: provinsi
              .map((String provinsi) =>
                  DropdownMenuItem(value: provinsi, child: Text(provinsi)))
              .toList(),
          onChanged: (newValueP) {}),
    );
  }
}
