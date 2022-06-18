import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CaptureImage extends StatefulWidget {
  const CaptureImage({Key? key}) : super(key: key);

  @override
  State<CaptureImage> createState() => _CaptureImageState();
}

class _CaptureImageState extends State<CaptureImage> {
  File? image;
  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    // Pick an image
    final XFile? imagepick =
        await _picker.pickImage(source: ImageSource.gallery);
    // Capture a photo
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    // Pick a video
    final XFile? imageV = await _picker.pickVideo(source: ImageSource.gallery);
    // Capture a video
    final XFile? video = await _picker.pickVideo(source: ImageSource.camera);
    // Pick multiple images
    final List<XFile>? images = await _picker.pickMultiImage();
    image = File(imagepick!.path);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          image != null
              ? Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Image.file(image!))
              : Container(),
          TextButton(
              onPressed: () async {
                getImage();
              },
              child: Text('Tekan'))
        ],
      ),
    );
  }
}
