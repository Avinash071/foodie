import 'package:flutter/material.dart';

//ignore: must_be_immutable
class ScreenTemplate extends StatefulWidget {
  String screentitle = '' ;
  String screenrecipe = '';
  String screenphoto = '';
  ScreenTemplate(this.screenrecipe,this.screentitle);
  @override
  State<ScreenTemplate> createState() => _ScreenTemplateState();
}

class _ScreenTemplateState extends State<ScreenTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.deepOrangeAccent,
        title:Text(widget.screentitle),
        titleTextStyle: const TextStyle(
          fontFamily: 'Shadows Into',
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset('icons_main/foodicon.png',
              height: 250,
              width: 250),
              Text('Recipe:',
              style: TextStyle(
                fontFamily: 'Shadows Into',
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 5),
              Text(widget.screenrecipe,
              style: TextStyle(
                fontFamily: 'Shadows Into',
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
