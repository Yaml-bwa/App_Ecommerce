import 'package:flutter/material.dart';
import 'package:parcial_mobil/Categorias/Vestidos.dart';
import 'package:parcial_mobil/Prendas/Prendas.dart';

class RowCategoryWidget extends StatelessWidget {
  const RowCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 2; i++)
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Vestidos(),
                  ),
                );
              },
              child: Container(
                margin:
                    EdgeInsets.only(top: 10, bottom: 15, left: 10, right: 10),
                padding: EdgeInsets.symmetric(horizontal: 8),
                height: 55,
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
                  //  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        //Imagen del producto
                        Image.asset(
                          categorias[i],
                          height: 90,
                          width: 100,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //Descripcion del producto
                          Text(
                            nombCategorias[i],
                            style: TextStyle(
                                color: Color(0xFF475269),
                                fontSize: 23,
                                fontWeight: FontWeight.w500),
                          ),

                          //Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
