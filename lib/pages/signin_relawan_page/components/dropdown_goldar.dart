import 'package:crm_stigeit/styles/consts.dart';
import 'package:flutter/material.dart';

class DropdownGoldar extends StatefulWidget {
  const DropdownGoldar({Key? key}) : super(key: key);

  @override
  State<DropdownGoldar> createState() => _DropdownGoldarState();
}

class _DropdownGoldarState extends State<DropdownGoldar> {
  late String newValue;
  var goldars = ["A", "B", "AB", "O", "-"];
  String selectedGoldar = "A";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 56,
        child: DropdownButtonFormField(
          icon: const ImageIcon(
            AssetImage('assets/images/blood.png'),
            color: Colors.red,
          ),
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: const BorderSide(color: kgrey, width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: const BorderSide(color: kblue1, width: 1))),
          items: goldars
              .map((String goldars) => DropdownMenuItem<String>(
                  value: goldars, child: Text(goldars)))
              .toList(),
          value: selectedGoldar,
          onChanged: (newValue) {
            setState(() {});
          },
        ),
      ),
    );
  }
}
