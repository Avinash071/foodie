import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:foodie/cardtemplate.dart';
import 'package:foodie/prawns.dart';
import 'package:http/http.dart';

import 'chicken.dart';
import 'fish.dart';
import 'mutton.dart';
class NonVeg extends StatefulWidget {
  const NonVeg({Key? key}) : super(key: key);
  @override
  State<NonVeg> createState() => _NonVegState();
}

class _NonVegState extends State<NonVeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('Non-Vegetarian'),
      ),
      backgroundColor: Colors.red[100],
      body: Container(
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(55, 100, 20,0),
                      child: Row(
                        children: <Widget>[
                          Center(
                            child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Chicken()));
                              },
                              icon: Center(child: Image.asset('icons_main/foodicon.png')),
                              iconSize: 100,
                            ),
                          ),
                          SizedBox(width: 50),
                          Center(
                            child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Mutton()));
                              },
                              icon: Center(child: Image.asset('icons_main/foodicon.png')),
                              iconSize: 100,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(80, 10, 0, 10),
                      child: Row(
                        children: <Widget>[
                          Text('Chicken',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Shadows Into',
                                  fontSize: 20
                              )),
                          SizedBox(width: 110),
                          Text('Mutton',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Shadows Into',
                                  fontSize: 20))
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(55, 30, 20,0),
                      child: Row(
                        children: <Widget>[
                          Center(
                            child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Fish()));
                              },
                              icon: Center(child: Image.asset('icons_main/foodicon.png')),
                              iconSize: 100,
                            ),
                          ),
                          SizedBox(width: 50),
                          Center(
                            child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Prawns()));
                              },
                              icon: Center(child: Image.asset('icons_main/foodicon.png')),
                              iconSize: 100,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(80, 10, 10, 20),
                      child: Row(
                        children: <Widget>[
                          Text('Fish',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Shadows Into',
                                  fontSize: 20
                              )),
                          SizedBox(width: 130),
                          Text('Prawns',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Shadows Into',
                                  fontSize: 20))
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          )
      ),
    );
  }
}
