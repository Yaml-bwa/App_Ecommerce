import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Image.asset("images/login.png"),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0XFF475269).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 27,
                      color: Color(0xFF475269),
                    ),
                    SizedBox(width: 10),
                    Container(
                      //      margin: EdgeInsets,
                      width: 250,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter Username"),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0XFF475269).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    //Icono
                    Icon(
                      Icons.lock,
                      size: 27,
                      color: Color(0xFF475269),
                    ),
                    SizedBox(width: 10),
                    Container(
                      //      margin: EdgeInsets,
                      width: 250,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter Password"),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(left: 15),
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forget Password",
                    style: TextStyle(
                      color: Color(0xFF475269),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "homePage");
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF475269),
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
                    "Sign In",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have Account? - ",
                    style: TextStyle(
                      color: Color(0xFF475269).withOpacity(0.8),
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "homePage");
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color(0XFF475269),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}