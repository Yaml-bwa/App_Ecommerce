import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5F9FD),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            decoration: BoxDecoration(
              color: Color(0xFF475269),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF475269),
                  blurRadius: 5,
                  spreadRadius: 1,
                )
              ],
            ),
            //tamaño de los botones para añadir al carrito
            child: Row(
              children: [
                Text(
                  "Añadir",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                      color: Colors.white),
                ),
                SizedBox(width: 10),
                Icon(
                  CupertinoIcons.cart_badge_plus,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            decoration: BoxDecoration(
              color: Color(0xFF475269),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF475269),
                  blurRadius: 5,
                  spreadRadius: 1,
                )
              ],
            ),
            child: Icon(
             Icons.shopping_bag,
              color: Colors.white,
              size: 33,
            ),
          ),
        ],
      ),
    );
  }
}