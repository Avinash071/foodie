import 'package:flutter/material.dart';
import 'package:foodie/cardtemplate.dart';
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
        backgroundColor: Colors.greenAccent,
        title: Text('Vegetarian'),
      ),
      backgroundColor: Colors.green[100],
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
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CardTemplate()));
                              },
                              icon: Center(child: Image.asset('icons_main/foodicon.png')),
                              iconSize: 100,
                            ),
                          ),
                          SizedBox(width: 50),
                          Center(
                            child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CardTemplate()));
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
                          Text('Paneer',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Shadows Into',
                            fontSize: 20
                          )),
                          SizedBox(width: 110),
                          Text('Non-Paneer',
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
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CardTemplate()));
                              },
                              icon: Center(child: Image.asset('icons_main/foodicon.png')),
                              iconSize: 100,
                            ),
                          ),
                          SizedBox(width: 50),
                          Center(
                            child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CardTemplate()));
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
                          Text('Veggies',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Shadows Into',
                                  fontSize: 20
                              )),
                          SizedBox(width: 110),
                          Text('Non-Veggies',
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
