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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
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
                  width: 150,
                  text: 'Take KTP',
                  onPressed: () => getImage(ImageSource.camera))
            ],
          ),
          Column(
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
                  width: 150,
                  text: 'Take Photos',
                  onPressed: () => getImage(ImageSource.gallery))
            ],
          ),
        ],
      ),
    );
  }
}
