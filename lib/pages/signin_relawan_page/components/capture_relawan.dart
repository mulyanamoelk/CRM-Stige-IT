import 'dart:io';

import 'package:crm_stigeit/styles/consts.dart';
import 'package:crm_stigeit/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CaptureImage extends StatefulWidget {
  const CaptureImage({Key? key}) : super(key: key);

  @override
  State<CaptureImage> createState() => _CaptureImageState();
}

class _CaptureImageState extends State<CaptureImage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TakeKtp(),
          SizedBox(
            width: 80,
          ),
          TakeImageProfile()
        ],
      ),
    );
  }
}

class TakeImageProfile extends StatefulWidget {
  const TakeImageProfile({Key? key}) : super(key: key);

  @override
  State<TakeImageProfile> createState() => _TakeImageProfileState();
}

class _TakeImageProfileState extends State<TakeImageProfile> {
  File? _image;
  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    final imageTemporary = File(image.path);
    setState(() {
      this._image = imageTemporary;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _image != null
            ? Image.file(
                _image!,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              )
            : Image.asset(
                'assets/images/graduated.png',
                width: 100,
                height: 100,
              ),
        SizedBox(
          height: 20,
        ),
        CustomButton(
            width: 120,
            text: 'Take Image',
            onPressed: () => getImage(
                  ImageSource.gallery,
                ))
      ],
    );
  }
}

class TakeKtp extends StatefulWidget {
  const TakeKtp({Key? key}) : super(key: key);

  @override
  State<TakeKtp> createState() => _TakeKtpState();
}

class _TakeKtpState extends State<TakeKtp> {
  File? _image;
  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    final imageTemporary = File(image.path);
    setState(() {
      this._image = imageTemporary;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _image != null
            ? Image.file(
                _image!,
                width: 100,
                fit: BoxFit.cover,
              )
            : Image.asset(
                'assets/images/logo.png',
                width: 100,
              ),
        SizedBox(
          height: 20,
        ),
        CustomButton(
            width: 120,
            text: 'Take KTP',
            onPressed: () => getImage(ImageSource.camera))
      ],
    );
  }
}
