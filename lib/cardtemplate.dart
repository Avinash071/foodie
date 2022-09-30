import 'package:flutter/material.dart';
import 'package:foodie/screentemplate.dart';
class CardTemplate extends StatefulWidget {
  String cardtitle = '';
  @override
  State<CardTemplate> createState() => _CardTemplateState();
}

class _CardTemplateState extends State<CardTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chicken'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Card(
        borderOnForeground: true,
        margin: EdgeInsets.fromLTRB(10, 10, 10,5),
        child: Padding(
          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Row(
                  children: <Widget>[
                    Text('Chicken',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Shadows Into'
                    ),),
                    SizedBox(width: 70),
                    Center(child: Image.asset('icons_main/foodicon.png'))
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              ElevatedButton.icon(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScreenTemplate('We need a lot of ingredients','Chicken')));},
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrangeAccent,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                  icon: Icon(Icons.fastfood),
                  label: Text('Click Here',))
            ],
          ),
        ),

      ),
    );
  }
}
