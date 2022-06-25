import 'package:crm_stigeit/widget/custom_form.dart';
import 'package:flutter/material.dart';

import '../../../styles/consts.dart';

class FormEmailR extends StatelessWidget {
  const FormEmailR({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: CustomForm(
            hintText: 'Masukan Email',
            icons: Icon(
              Icons.mail,
              color: kblue1,
            ),
            inputType: TextInputType.emailAddress,
            textval: 'Email tidak boleh kosong'));
  }
}
