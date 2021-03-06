import 'package:crm_stigeit/pages/navigation/convex_navigation_bar.dart';
import 'package:crm_stigeit/styles/consts.dart';
import 'package:crm_stigeit/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class SignaturesRelawan extends StatefulWidget {
  const SignaturesRelawan({Key? key}) : super(key: key);

  @override
  State<SignaturesRelawan> createState() => _SignaturesRelawanState();
}

class _SignaturesRelawanState extends State<SignaturesRelawan> {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 1,
    penColor: Colors.red,
    exportBackgroundColor: Colors.blue,
    exportPenColor: Colors.black,
    onDrawStart: () => print('onDrawStart called!'),
    onDrawEnd: () => print('onDrawEnd called!'),
  );

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => print('Value changed'));
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
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: kblue1,
            )),
        actions: const [
          Icon(
            Icons.more_vert,
            color: kblue1,
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 100),
                child: const Text(
                  'Tanda Tangan',
                  style: TextStyle(
                      color: kblue1, fontSize: 22, fontWeight: FontWeight.bold),
                )),
            Expanded(
                child: Signature(
                    height: 300,
                    controller: SignatureController(
                        penStrokeWidth: 5,
                        penColor: kblue1,
                        exportBackgroundColor: kblue2))),
            Container(
                margin: const EdgeInsets.only(bottom: 20, left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                        width: 120,
                        text: 'Clear',
                        onPressed: () {
                          setState(() {
                            _controller.clear();
                          });
                        }),
                    const SizedBox(
                      width: 24,
                    ),
                    CustomButton(
                        width: 120,
                        text: 'Save',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ConvexNavigationBars()));
                        }),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
