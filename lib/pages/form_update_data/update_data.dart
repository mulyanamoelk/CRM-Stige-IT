import 'package:crm_stigeit/pages/form_update_data/components/capture.dart';
import 'package:crm_stigeit/pages/form_update_data/components/form_password_update.dart';
import 'package:crm_stigeit/pages/form_update_data/components/section_title_update.dart';
import 'package:crm_stigeit/pages/show_profile/show_profile.dart';
import 'package:crm_stigeit/styles/consts.dart';
import 'package:crm_stigeit/widget/custom_button.dart';
import 'package:crm_stigeit/widget/custom_form.dart';
import 'package:crm_stigeit/widget/custom_password.dart';
import 'package:flutter/material.dart';

class UpdateData extends StatefulWidget {
  const UpdateData({Key? key}) : super(key: key);

  @override
  State<UpdateData> createState() => _UpdateDataState();
}

class _UpdateDataState extends State<UpdateData> {
  final _formKeyUpdate = GlobalKey<FormState>();
  bool _isHidePassword = true;
  void tooglePassword() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: kwhite,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: kblue1,
              ))),
      body: ListView(children: [
        Container(
          margin: EdgeInsets.only(right: 24, left: 24),
          child: Form(
              key: _formKeyUpdate,
              child: Column(
                children: [
                  ImageUpdate(),
                  SectionTitleUpdate(),
                  SectionFormNIKUpdate(),
                  SectionNameUpdate(),
                  SectionEmailUpdate(),
                  FormPasswordUpdate(),
                  SectionButtonUpdate(formKeyUpdate: _formKeyUpdate),
                ],
              )),
        )
      ]),
    );
  }
}

class SectionEmailUpdate extends StatelessWidget {
  const SectionEmailUpdate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: CustomForm(
          hintText: 'Email',
          icons: Icon(
            Icons.mail,
            color: kblue1,
          ),
          inputType: TextInputType.emailAddress,
          textval: 'Masukan Email'),
    );
  }
}

class SectionNameUpdate extends StatelessWidget {
  const SectionNameUpdate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: CustomForm(
          hintText: 'Nama',
          icons: Icon(
            Icons.person,
            color: kblue1,
          ),
          inputType: TextInputType.name,
          textval: 'Nama tidak boleh kosong'),
    );
  }
}

class SectionButtonUpdate extends StatelessWidget {
  const SectionButtonUpdate({
    Key? key,
    required GlobalKey<FormState> formKeyUpdate,
  })  : _formKeyUpdate = formKeyUpdate,
        super(key: key);

  final GlobalKey<FormState> _formKeyUpdate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: CustomButton(
          text: 'Update Data',
          onPressed: () {
            if (_formKeyUpdate.currentState!.validate()) {
              Navigator.push(
                  context,
                  (MaterialPageRoute(
                      builder: (context) => const ShowProfile())));
            }
          }),
    );
  }
}

class SectionFormNIKUpdate extends StatelessWidget {
  const SectionFormNIKUpdate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomForm(
        hintText: 'NIK',
        icons: Icon(
          Icons.credit_card,
          color: kblue1,
        ),
        inputType: TextInputType.number,
        textval: 'NIK tidak boleh kosong');
  }
}
