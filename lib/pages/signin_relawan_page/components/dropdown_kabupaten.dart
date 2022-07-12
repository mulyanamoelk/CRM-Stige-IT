import 'package:crm_stigeit/models/userProvinsi.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../styles/consts.dart';

class DropdownKabs extends StatefulWidget {
  const DropdownKabs({Key? key}) : super(key: key);

  @override
  State<DropdownKabs> createState() => _DropdownKabsState();
}

class _DropdownKabsState extends State<DropdownKabs> {
  late String _selectedKab = "Jawa Barat";
  var _Kabs = {
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
  };
  List Kabs = [];
  KabsDependent() {
    _Kabs.forEach((key) {
      _Kabs.add(key);
    });
  }

  late String _selectedKec = "Tarogong Kidul";
  var _Kecs = {
    "Banjarwangi",
    "Banyuresmi",
    "Bayongbong",
    "Limbangan",
    "Bungbulang",
    "Caringin",
    "Cibalong",
    "Cibatu",
    "Cibiuk",
    "Cigedug",
    "Cihurip",
    "Cikajang",
    "Cikelet",
    "Cilawu",
    " Cisewu",
    "Cisompet",
    "Cisurupan",
    "Garut Kota",
    "Kadungora",
    "Karangpawitan",
    "Karangtengah",
    "Kersamanah",
    "Leles",
    "Leuwigoong",
    "Malangbong",
    " Mekarmukti",
    " Pakenjeng",
    "Pameungpeuk",
    "Pamulihan",
    "Pangatikan",
    "Pasirwangi",
    "Peundeuy",
    "Samarang",
    "Selaawi",
    "Singajaya",
    "Sucinajara",
    "Sukaresmi",
    "Sukawening",
    " Talegong",
    "Tarogong Kaler",
    "Tarogong Kidul",
    " Wanaraja"
  };
  List Kecs = [];
  KecsDependent() {
    _Kecs.forEach((key) {
      _Kecs.add(key);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    KabsDependent();
    KecsDependent();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            height: 56,
            child: DropdownButtonFormField(
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
                value: _selectedKab,
                items: _Kabs.map((String Kabs) {
                  return DropdownMenuItem(
                    child: new Text(Kabs),
                    value: Kabs,
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _selectedKab = '$newValue';
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 56,
              child: DropdownButtonFormField(
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
                          borderSide:
                              const BorderSide(color: kblue1, width: 1))),
                  value: _selectedKec,
                  items: _Kecs.map((String Kecs) {
                    return DropdownMenuItem(
                      child: new Text(Kecs),
                      value: Kecs,
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      _selectedKec = '$newValue';
                    });
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
