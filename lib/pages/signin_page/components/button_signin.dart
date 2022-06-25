import 'package:flutter/material.dart';

import '../../../widget/custom_button.dart';
import '../../navigation/convex_navigation_bar.dart';

class ButtonSignIn extends StatelessWidget {
  const ButtonSignIn({
    Key? key,
    required GlobalKey<FormState> formSignIn,
  })  : _formSignIn = formSignIn,
        super(key: key);

  final GlobalKey<FormState> _formSignIn;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: CustomButton(
          text: 'SignIn',
          onPressed: () {
            if (_formSignIn.currentState!.validate()) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ConvexNavigationBars()));
            }
          }),
    );
  }
}
