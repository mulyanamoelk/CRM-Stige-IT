import 'package:crm_stigeit/styles/consts.dart';
import 'package:crm_stigeit/widget/custom_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class FormPasswordRelawan extends StatefulWidget {
  const FormPasswordRelawan({Key? key}) : super(key: key);

  @override
  State<FormPasswordRelawan> createState() => _FormPasswordRelawanState();
}

class _FormPasswordRelawanState extends State<FormPasswordRelawan> {
  bool _isHidePassword = true;
  void tooglePassword() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: CustomPassword(
          hintText: 'Password',
          iconsSuff: IconButton(
              onPressed: () {
                setState(() {
                  _isHidePassword = !_isHidePassword;
                });
              },
              icon: Icon(
                _isHidePassword ? Icons.visibility_off : Icons.visibility,
                color: _isHidePassword ? kgrey : kblue1,
              )),
          iconsPre: Icon(
            Icons.lock,
            color: kblue1,
          ),
          Obscure: _isHidePassword,
          ValidatorValue: 'Isi Password'),
    );
  }
}
