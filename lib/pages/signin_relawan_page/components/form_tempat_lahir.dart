import 'package:flutter/material.dart';

import '../../../styles/consts.dart';

class FormTempatLahir extends StatelessWidget {
  const FormTempatLahir({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        autofocus: true,
        keyboardType: TextInputType.streetAddress,
        decoration: InputDecoration(
          hintText: 'Tempat Lahir',
          prefixIcon: const Icon(Icons.home, color: kblue1),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: const BorderSide(color: kgrey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: const BorderSide(color: kblue1)),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Tempat lahir tidak boleh kosong';
          } else {}
          return null;
        },
      ),
    );
  }
}
