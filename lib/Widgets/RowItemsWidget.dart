import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parcial_mobil/Prendas/Prendas.dart';

class RowItemsWidget extends StatelessWidget {
  const RowItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 4; i++) Ofertas(),
        ],
      ),
    );
  }
}

class Ofertas extends StatelessWidget {
  const Ofertas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 180,
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
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 5),
                height: 160,
                width: 130,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 101, 139, 222),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              //Imagen del producto
              Image.asset(
                "images/1.png",
                height: 140,
                width: 150,
                fit: BoxFit.contain,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Descripcion del producto
                Text(
                  "titulo",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 5),
                Text(
                  "generoP",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      "\$$precio",
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 70),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFF475269),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {
                          //Aqui hacer la operacion de añadir al carrito la prenda
                        },
                        child: Icon(
                          CupertinoIcons.cart_fill_badge_plus,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
