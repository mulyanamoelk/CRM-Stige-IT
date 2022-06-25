import 'package:crm_stigeit/widget/custom_form.dart';
import 'package:flutter/material.dart';

import '../../../styles/consts.dart';

class FormNames extends StatelessWidget {
  const FormNames({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: CustomForm(
            hintText: 'Masukan Nama',
            icons: Icon(
              Icons.person,
              color: kblue1,
            ),
            inputType: TextInputType.name,
            textval: 'Nama tidak boleh kosong'));
  }
}
