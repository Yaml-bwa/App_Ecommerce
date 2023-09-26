import 'package:flutter/material.dart';
import 'package:parcial_mobil/Widgets/AllItemsWidget.dart';

import 'package:parcial_mobil/pages/HomePage.dart';
import 'package:parcial_mobil/pages/ItemPage.dart';

import 'package:parcial_mobil/pages/LoginPage.dart';
import 'package:parcial_mobil/pages/Profile.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
        "homePage": (context) => HomePage(),
        "itemPage": (context) =>
            ItemPage(imagen: "", descripcion: "", precio: 0.0, titulo: ""),
        // "bottonCartSheet": (context) => BottonCartSheet(),
        "allItemsWidget": (context) => AllItemsWidget(imagen: ""),
        "profile": (context) => Profile(),
      },
    );
  }
}
