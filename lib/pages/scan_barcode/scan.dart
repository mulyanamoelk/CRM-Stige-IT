import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:shimmer/shimmer.dart';

class ScanBarcode extends StatefulWidget {
  const ScanBarcode({Key? key}) : super(key: key);

  @override
  State<ScanBarcode> createState() => _ScanBarcodeState();
}

class _ScanBarcodeState extends State<ScanBarcode> {
  String _scanBarcode = 'Unknown';

  @override
  void initState() {
    super.initState();
  }

  Future<void> scanBarcode() async {
    String barcodeScanRes;

    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Shimmer(
                  gradient: LinearGradient(
                      colors: <Color>[Color(0XFF00518F), Color(0XFF00CBFF)]),
                  child: Text(
                    'Scan Disini',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              InkWell(
                onTap: scanBarcode,
                child: Image.asset(
                  'assets/images/photo-camera.png',
                  width: 150,
                ),
              )
            ]));
  }
}
