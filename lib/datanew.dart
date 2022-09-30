import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';
class Datanew {
  String urlnum = '';
  String value1 = '';
  String image = '';
  int length = 0;
  String name = '';
  String value2 = '';
  Datanew({required this.urlnum});
  void getrecipe() async {
    Response response = await get(Uri.parse('$urlnum'));
    Map data = jsonDecode(response.body);
    List value1 = data['extendedIngredients'];
    var image = data['image'].toString();
    var length = value1.length;
    var name = (data['title']);
    List<String> value2 = <String>[];
    for (var integer = 0; integer < length; integer++) {
      Map value11 = value1[integer];
      value2.insert(integer, value11['name']);
    }
  }
}