import 'package:flutter/material.dart';
import 'package:foodie/paneer.dart';
import 'package:foodie/veggies.dart';
class Veg extends StatefulWidget {
  const Veg({Key? key}) : super(key: key);
  @override
  State<Veg> createState() => _VegState();
}

class _VegState extends State<Veg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Vegetarian'),
      ),
      backgroundColor: Colors.green[100],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(85, 30, 0, 0),
        child: Container(
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
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Paneer()));
                                },
                                icon: Center(child: Image.asset('icons_main/foodicon.png')),
                                iconSize: 100,
                              ),
                            ),
                            SizedBox(width: 50),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(80, 10, 0, 10),
                        child: Row(
                          children: <Widget>[
                            Text('Paneer',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Shadows Into',
                              fontSize: 20
                            )),
                            SizedBox(width: 110),
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
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Veggies()));
                                },
                                icon: Center(child: Image.asset('icons_main/foodicon.png')),
                                iconSize: 100,
                              ),
                            ),
                            SizedBox(width: 50),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(80, 10, 10, 20),
                        child: Row(
                          children: <Widget>[
                            Text('Veggies',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Shadows Into',
                                    fontSize: 20
                                )),
                            SizedBox(width: 110),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
        ),
      ),
    );
  }
}
