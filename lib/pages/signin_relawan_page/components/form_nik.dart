import 'package:flutter/material.dart';

import '../../../styles/consts.dart';

class FormNIKs extends StatelessWidget {
  const FormNIKs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        autofocus: true,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(labelText: 'Masukan 16 digit angka',
          hintText: '3205050107990055',
          prefixIcon: const Icon(
            Icons.credit_card,
            color: kblue1,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: const BorderSide(color: kgrey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: const BorderSide(color: kblue1)),
        ),
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'NIK tidak boleh kosong';
          } else {}
          return null;
        },
      ),
    );
  }
}
