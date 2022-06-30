import 'package:crm_stigeit/widget/custom_form.dart';
import 'package:flutter/material.dart';

import '../../../styles/consts.dart';

class FormPasswordSignIn extends StatefulWidget {
  const FormPasswordSignIn({Key? key}) : super(key: key);

  @override
  State<FormPasswordSignIn> createState() => _FormPasswordSignInState();
}

class _FormPasswordSignInState extends State<FormPasswordSignIn> {
  bool _isHidePassword = true;
  void _tooglePassword() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        autofocus: false,
        initialValue: '',
        obscureText: _isHidePassword,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: const BorderSide(color: kgrey)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: const BorderSide(color: kblue1)),
            hintText: 'Password',
            prefixIcon: Icon(
              Icons.lock,
              color: kblue1,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _isHidePassword = !_isHidePassword;
                });
              },
              icon: Icon(
                _isHidePassword ? Icons.visibility_off : Icons.visibility,
                color: _isHidePassword ? kgrey : kblue1,
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
