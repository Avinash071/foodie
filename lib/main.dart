import 'dart:convert';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:foodie/non-veg.dart';
import 'package:foodie/veg.dart';
import 'package:http/http.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
));
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: Image.asset('icons_main/foodicon_256.png',
            height: 200,
            width: 200),
            nextScreen: Home(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.scale,
            backgroundColor: Colors.blue));
  }
}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text('Hello Foodie'),
        titleTextStyle: const TextStyle(
          fontFamily: 'Shadows Into',
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
        color: Colors.red[100],
        child: Column(
          children: <Widget>[
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0,0, 5),
                  child: Text('What do you want to eat today?',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Shadows Into'
                  )),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(66, 50, 0, 0),
                  child: Center(
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => NonVeg()));
                          },
                          icon: Center(child: Image.asset('icons_main/non-veg.png')),
                        iconSize: 200,
                      )),
                )
              ],
            ),
            SizedBox(height: 10),
            Center(child: Text('Non-Vegetarian')),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(66, 50, 0, 5),
                  child: Center(
                      child:IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Veg()));
                          },
                          icon: Center(child: Image.asset('icons_main/avocado192.png')),
                          iconSize: 200,
                      )),
                )
              ],
            ),
            SizedBox(height: 10),
            Center(
              child: Text('Vegetarian'))
          ],
        ),
      ),
    );
  }
}




