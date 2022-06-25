import 'package:crm_stigeit/widget/custom_form.dart';
import 'package:flutter/material.dart';

import '../../../styles/consts.dart';

class FormWhatsApp extends StatelessWidget {
  const FormWhatsApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: CustomForm(
            hintText: '+62xxxxxxxxxxx',
            icons: Icon(
              Icons.whatsapp,
              color: kblue1,
            ),
            inputType: TextInputType.phone,
            textval: 'nNo WhatsApp tidak boleh kosong'));
  }
}
