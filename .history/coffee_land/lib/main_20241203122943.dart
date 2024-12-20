import 'package:coffee_land/screens/Espresso.dart';
import 'package:coffee_land/screens/cappuccino.dart';
import 'package:coffee_land/screens/details.dart';
import 'package:coffee_land/screens/latte.dart';
import 'package:coffee_land/screens/login.dart';
import 'package:coffee_land/screens/mocha.dart';
import 'package:coffee_land/screens/cardlist.dart';
import 'package:coffee_land/screens/orderconformed.dart';
import 'package:coffee_land/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/login': (context) => login(),
        '/signup': (context) => signup(),
        '/cappuccino': (context) => cappuccino(),
        '/latte': (context) => latte(),
        '/Espresso': (context) => Espresso(),
        '/mocha': (context) => mocha(),
        '/details': (context) => details(),
        '/cardlist': (context) => cardlist(),
        '/order': (context) => order(),
      },
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/get_Start.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 280, left: 64),
            child: Image.asset('assets/images/coffee_land.png', scale: 1.2),
          ),

          // Login Button
          Container(
            padding: EdgeInsets.only(left: 100, top: 500),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: login(),
                    isIos: true,
                    duration: Duration(milliseconds: 400),
                  ),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                minimumSize: Size(200, 40),
              ),
              child: Text(
                "Login",
                style: TextStyle(
                  color: Color.fromRGBO(112, 122, 112, 1),
                  fontFamily: 'Roboto-Regular.ttf',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),

          // Sign-Up Button
          Container(
            padding: EdgeInsets.only(left: 100, top: 560),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: signup(),
                    isIos: true,
                    duration: Duration(milliseconds: 400),
                  ),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: Color.fromRGBO(191, 83, 44, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                minimumSize: Size(200, 40),
              ),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Roboto-Regular.ttf',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
