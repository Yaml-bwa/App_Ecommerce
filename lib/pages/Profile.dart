import 'package:flutter/material.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(vertical: 35),
                child: InkWell(
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
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Colors.redAccent.withOpacity(0.3),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1,
                    spreadRadius: 5,
                    color: Colors.redAccent,
                  ),
                ]),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 250,
              width: 250,
              child: Stack(
                children: [
                  Image.asset("images/perfil.png"),
                ],
              ),
            ),
          ),
          SizedBox(height: 80),
          Text(
            "Yamil Torrico Vasquez",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 20),
          Text(
            "Correo@gmail.com",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
            child: Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.symmetric(vertical: 20),
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
              child: Text(
                "Cerrar Sesion",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}