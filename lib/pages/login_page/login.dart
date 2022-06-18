import 'package:crm_stigeit/styles/consts.dart';
import 'package:crm_stigeit/widget/custom_form.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 24, right: 24, top: 24),
        child: Column(
          children: [
            // CustomForm(
            //     hintText: 'Nama Lengkap',
            //     icons: Icon(
            //       Icons.person,
            //       color: kblue1,
            //     )),
            // CustomForm(
            //     hintText: 'No KTP',
            //     icons: Icon(
            //       Icons.perm_identity,
            //       color: kblue1,
            //     )),
            // CustomForm(
            //     hintText: 'Email',
            //     icons: Icon(
            //       Icons.mail,
            //       color: kblue1,
            //     )),
            // CustomForm(
            //     hintText: 'Telepon',
            //     icons: Icon(
            //       Icons.phone,
            //       color: kblue1,
            //     )),
            // CustomForm(
            //     hintText: 'Tempat lahir',
            //     icons: Icon(
            //       Icons.maps_home_work,
            //       color: kblue1,
            //     )),
            // CustomForm(
            //     hintText: 'Tanggal Lahir',
            //     icons: Icon(
            //       Icons.calendar_month,
            //       color: kblue1,
            //     )),
            // DropdownSearch(
            //   items: ['Laki-laki', 'Perempuan'],
            // )
          ],
        ),
      ),
    );
  }
}
