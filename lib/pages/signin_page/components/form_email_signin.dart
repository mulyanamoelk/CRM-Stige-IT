import 'package:flutter/material.dart';

import '../../../styles/consts.dart';
import '../../../widget/custom_form.dart';

class FormEmailSignIn extends StatelessWidget {
  const FormEmailSignIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: CustomForm(
          hintText: 'Masukan Email',
          icons: Icon(
            Icons.mail,
            color: kblue1,
          ),
          inputType: TextInputType.emailAddress,
          textval: 'Email tidak boleh kosong'),
    );
  }
}
