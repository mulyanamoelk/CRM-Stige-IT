import 'package:crm_stigeit/widget/custom_form.dart';
import 'package:flutter/material.dart';

import '../../../styles/consts.dart';

class FornPasswordSignIn extends StatelessWidget {
  const FornPasswordSignIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: CustomForm(
          obscure: true,
          hintText: 'Masukan Password',
          icons: Icon(
            Icons.lock,
            color: kblue1,
          ),
          inputType: TextInputType.visiblePassword,
          textval: 'Masukan password'),
    );
  }
}
