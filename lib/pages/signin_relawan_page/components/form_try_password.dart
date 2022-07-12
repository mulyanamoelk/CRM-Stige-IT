import 'package:crm_stigeit/widget/custom_password.dart';
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
      child: CustomPassword(
          hintText: 'Ulangi Password',
          iconsSuff: IconButton(
              onPressed: () {
                setState(() {
                  isHidePassword = !isHidePassword;
                });
              },
              icon: Icon(
                isHidePassword ? Icons.visibility_off : Icons.visibility,
                color: isHidePassword ? kgrey : kblue1,
              )),
          iconsPre: Icon(
            Icons.lock,
            color: kblue1,
          ),
          Obscure: isHidePassword,
          ValidatorValue: 'Isi Password'),
    );
  }
}
