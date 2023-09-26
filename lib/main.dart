import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:parcial_mobil/Widgets/AllItemsWidget.dart';

import 'package:parcial_mobil/pages/HomePage.dart';
import 'package:parcial_mobil/pages/ItemPage.dart';

import 'package:parcial_mobil/pages/LoginPage.dart';
import 'package:parcial_mobil/pages/Profile.dart';
import 'package:parcial_mobil/pages/Sign%20Up.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
        "homePage": (context) => HomePage(),
        "itemPage": (context) => ItemPage(),
        // "bottonCartSheet": (context) => BottonCartSheet(),
        "allItemsWidget": (context) => AllItemsWidget(),
          "profile": (context) => Profile(),
        "register": (context) => Register(),
      },
    );
  }
}
