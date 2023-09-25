import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parcial_mobil/Prendas/Prendas.dart';
import 'package:parcial_mobil/Widgets/BottonCartSheet.dart';
import 'package:parcial_mobil/main.dart';
import 'package:parcial_mobil/pages/ItemPage.dart';

class AllItemsWidget extends StatelessWidget {
  @override
  //Son los productos que se ven al logear
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.68,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 6; i++) Prenda(),
      ],
    );
  }
}

class Prenda extends StatelessWidget {
  const Prenda({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F9FD),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF475269).withOpacity(0.3),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemPage(),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "images/Sudadera.png",
                height: 90,
                width: 90,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "titulo",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF475269),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "decripcion",
              style: TextStyle(
                fontSize: 15,
                color: const Color(0xFF475269).withOpacity(0.7),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$50",
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.redAccent),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color(0xFF475269),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottonCartSheet(),
                        ),
                      );
                    },
                    child: const Icon(
                      CupertinoIcons.cart_fill_badge_plus,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
