import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class getrecipe extends StatefulWidget {
  const getrecipe({Key? key}) : super(key: key);

  @override
  State<getrecipe> createState() => _getrecipeState();
}

class _getrecipeState extends State<getrecipe> {
  void getrecipe() async {
    Response response1 = await get(Uri.parse('https://api.spoonacular.com/recipes/findByIngredients?ingredients=apples,+flour,+sugar&number=2'));
    List data = jsonDecode(response1.body);
    print(data);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getrecipe();
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
