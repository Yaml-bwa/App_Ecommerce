import 'package:flutter/material.dart';
import 'package:parcial_mobil/Prendas/Prendas.dart';
import 'package:parcial_mobil/Widgets/AllItemsWidget.dart';

class Vestidos extends StatelessWidget {
  const Vestidos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F9FD),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF475269).withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Color(0xFF475269),
                      ),
                    ),
                  ),
                  SizedBox(width: 90),
                  Container(
                    child: Text(
                      "P A N T A L O N E S",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              AllItemsWidget()
            ],
          ),
        ),
      ),
    );
  }
}
