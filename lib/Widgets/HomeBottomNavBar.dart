import 'package:flutter/cupertino.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:parcial_mobil/Widgets/BottonCartSheet.dart';

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.grey[700],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
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
            child: badges.Badge(
              badgeContent: Text(
                "0",
                style: TextStyle(color: Colors.white),
              ),
              child: InkWell(
                onTap: () {
                  //Navigator.pushNamed(context, "bottonCartSheet");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          BottonCartSheet(),
                    ),
                  );
                },
                child: Icon(
                  CupertinoIcons.cart_fill,
                  size: 30,
                  color: Color(0xFF475269),
                ),
              ),
            ),
          ),
          /* Icon(
            Icons.category_outlined,
            color: Colors.white,
            size: 32,
          ),*/
          /*InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomCartSheet(),
                ),
              );
            },
            child: const Icon(
              CupertinoIcons.cart_fill,
              color: Colors.white,
              size: 32,
            ),
          ),*/
          /*  Icon(
            Icons.favorite_border,
            color: Colors.white,
            size: 32,
          ),*/
          Container(
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
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "profile");
              },
              child: Icon(
                Icons.person,
                size: 30,
                color: Color(0xFF475269),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
