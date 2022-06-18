import 'package:crm_stigeit/pages/home_page/home.dart';

import 'package:crm_stigeit/pages/navigation/convex_navigation_bar.dart';
import 'package:crm_stigeit/pages/scan_barcode/scan.dart';
import 'package:crm_stigeit/pages/share/share.dart';
import 'package:crm_stigeit/pages/signin_page/signin.dart';
import 'package:crm_stigeit/pages/signin_relawan_page/components/capture_relawan.dart';

import 'package:crm_stigeit/pages/signin_relawan_page/signature.dart';

import 'package:crm_stigeit/pages/splash/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashFirst(),
    );
  }
}
