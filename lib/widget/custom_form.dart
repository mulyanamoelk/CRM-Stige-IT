import 'package:crm_stigeit/styles/consts.dart';
import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  final String hintText, textval;
  final Icon icons;
  final bool obscure;
  final TextInputType inputType;

  const CustomForm(
      {Key? key,
      required this.hintText,
      required this.icons,
      this.obscure = false,
      required this.inputType,
      required this.textval})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: obscure,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: const BorderSide(color: kgrey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: const BorderSide(color: kblue1)),
          prefixIcon: icons,
          prefixIconColor: kblue1,
          hintText: hintText,
          hintStyle: const TextStyle(color: kgrey)),
      validator: (value) {
        if (value!.isEmpty) {
          return textval;
        } else {
          return null;
        }
      },
    );
  }
}
