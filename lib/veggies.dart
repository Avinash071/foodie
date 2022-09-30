import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:foodie/datanew.dart';
import 'package:foodie/screentemplate.dart';
import 'package:http/http.dart';
class Veggies extends StatefulWidget {
  const Veggies({Key? key}) : super(key: key);

  @override
  State<Veggies> createState() => _VeggiesState();
}

class _VeggiesState extends State<Veggies> {
  List<Datanew> recipies = [
    Datanew(urlnum: 'https://api.spoonacular.com/recipes/195842/information?includeNutrition=false&apiKey=01b236ca2a744e1997dd3e64248d4aa1'.toString()),
    Datanew(urlnum: 'https://api.spoonacular.com/recipes/195842/information?includeNutrition=false&apiKey=01b236ca2a744e1997dd3e64248d4aa1'.toString()),
    Datanew(urlnum: 'https://api.spoonacular.com/recipes/195842/information?includeNutrition=false&apiKey=01b236ca2a744e1997dd3e64248d4aa1'.toString()),
    Datanew(urlnum: 'https://api.spoonacular.com/recipes/195842/information?includeNutrition=false&apiKey=01b236ca2a744e1997dd3e64248d4aa1'.toString()),
    Datanew(urlnum: 'https://api.spoonacular.com/recipes/195842/information?includeNutrition=false&apiKey=01b236ca2a744e1997dd3e64248d4aa1'.toString()),
    Datanew(urlnum: 'https://api.spoonacular.com/recipes/195842/information?includeNutrition=false&apiKey=01b236ca2a744e1997dd3e64248d4aa1'.toString()),
    Datanew(urlnum: 'https://api.spoonacular.com/recipes/195842/information?includeNutrition=false&apiKey=01b236ca2a744e1997dd3e64248d4aa1'.toString()),
    Datanew(urlnum: 'https://api.spoonacular.com/recipes/195842/information?includeNutrition=false&apiKey=01b236ca2a744e1997dd3e64248d4aa1'.toString()),
    Datanew(urlnum: 'https://api.spoonacular.com/recipes/195842/information?includeNutrition=false&apiKey=01b236ca2a744e1997dd3e64248d4aa1'.toString()),
    Datanew(urlnum: 'https://api.spoonacular.com/recipes/195842/information?includeNutrition=false&apiKey=01b236ca2a744e1997dd3e64248d4aa1'.toString())
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Veggies'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        child: ListView.builder(
            itemCount: recipies.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScreenTemplate(recipies[index].value2, recipies[index].name)));
                  },
                  title: Text(recipies[index].name),
                  subtitle: Text(''),
                  trailing: Image.network(recipies[index].image),
                ),
              );
            }),
      ),
    );
  }
}