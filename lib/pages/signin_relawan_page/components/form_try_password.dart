import 'package:flutter/material.dart';

import '../../../styles/consts.dart';

class FormUlangiPassword extends StatefulWidget {
  const FormUlangiPassword({Key? key}) : super(key: key);

  @override
  State<FormUlangiPassword> createState() => _FormUlangiPasswordState();
}

class _FormUlangiPasswordState extends State<FormUlangiPassword> {
  bool isHidePassword = true;
  void _tooglePassword() {
    setState(() {
      isHidePassword = !isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        autofocus: false,
        initialValue: '',
        obscureText: isHidePassword,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: const BorderSide(color: kgrey)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: const BorderSide(color: kblue1)),
            hintText: 'Ulangi Password',
            prefixIcon: Icon(
              Icons.lock,
              color: kblue1,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isHidePassword = !isHidePassword;
                });
              },
              icon: Icon(
                isHidePassword ? Icons.visibility_off : Icons.visibility,
                color: isHidePassword ? kgrey : kblue1,
              ),
            ),
            isDense: true),
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'Password tidak boleh kosong';
          } else {}
          return null;
        },
      ),
    );
  }
}
