import 'package:crm_stigeit/styles/consts.dart';
import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  final String hintText;
  final Icon icons;
  final bool obscure;
  final TextInputType inputType;

  const CustomForm(
      {Key? key,
      required this.hintText,
      required this.icons,
      this.obscure = false,
      required this.inputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: BorderSide(color: kgrey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: BorderSide(color: kblue1)),
          prefixIcon: icons,
          prefixIconColor: kblue1,
          hintText: hintText,
          hintStyle: TextStyle(color: kgrey)),
    );
  }
}
