import 'package:crm_stigeit/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

import '../../../styles/consts.dart';
import '../../navigation/convex_navigation_bar.dart';

class Signatures extends StatefulWidget {
  const Signatures({Key? key}) : super(key: key);

  @override
  State<Signatures> createState() => _SignaturesState();
}

class _SignaturesState extends State<Signatures> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<SfSignaturePadState> signatureGlobalKey = GlobalKey();
    void _handleClearButtonPressed() {
      signatureGlobalKey.currentState!.clear();
    }

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
              )),
          actions: [
            Icon(
              Icons.more_vert,
              color: kblue1,
            )
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(top: 80),
          decoration: BoxDecoration(color: kwhite),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Tanda Tangan ',
                  style: TextStyle(
                      color: kblue1, fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 300,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: kblue1, width: 1)),
                  child: SfSignaturePad(
                    key: signatureGlobalKey,
                    maximumStrokeWidth: 1.0,
                    strokeColor: kblue1,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 24, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 30),
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: kblue1, width: 1)),
                          child: TextButton(
                              onPressed: _handleClearButtonPressed,
                              child: Text('Clear'))),
                      Container(
                          margin: EdgeInsets.only(bottom: 30),
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: kblue1, width: 1)),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ConvexNavigationBars()));
                              },
                              child: Text('Save'))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
