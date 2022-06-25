import 'package:crm_stigeit/widget/custom_form.dart';
import 'package:flutter/material.dart';

import '../../../styles/consts.dart';

class FormPhoneRelawan extends StatelessWidget {
  const FormPhoneRelawan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: CustomForm(
            hintText: '+62xxxxxxxxxxx',
            icons: Icon(
              Icons.phone,
              color: kblue1,
            ),
            inputType: TextInputType.phone,
            textval: 'Nomor tidak boleh kosong'));
  }
}
