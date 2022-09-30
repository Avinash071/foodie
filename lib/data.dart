import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
class Datalist{
  String name = '';
  String url = '';
  Datalist(this.name,this.url);
  List total = [];
}

class Data{
  var l1,l2,l3,l4,l5,l6,l7,l8,l9,l10;
  var name1,name2,name3,name4,name5,name6,name7,name8,name9,name10;
  List<String> b = [];
  List<String> a = [];
  void getrecipe() async {
    Response response1 = await get(Uri.parse('https://api.spoonacular.com/recipes/203075/information?includeNutrition=false&apiKey=1e6a0d27c66d4d46ba62655744da0c7f'));
    Map data1 = jsonDecode(response1.body);
    List value1 = data1['extendedIngredients'];
    var l1 = data1['image'];
    var n1 = value1.length;
    var name1 = (data1['title']);
    List<String> value12 = <String>[];
    for(var integer=0;integer<n1;integer++){
      Map value11 = value1[integer];
      value12.insert(integer, value11['name']);
    }
    Response response2 = await get(Uri.parse('https://api.spoonacular.com/recipes/504662/information?includeNutrition=false&apiKey=1e6a0d27c66d4d46ba62655744da0c7f'));
    Map data2 = jsonDecode(response2.body);
    List value2 = data2['extendedIngredients'];
    var l2 = data2['image'];
    var n2 = value2.length;
    var name2 = (data2['title']);
    List<String> value22 = <String>[];
    for(var integer=0;integer<n2;integer++){
      Map value21 = value2[integer];
      value22.insert(integer, value21['name']);
    }
    Response response3 = await get(Uri.parse('https://api.spoonacular.com/recipes/485365/information?includeNutrition=false&apiKey=1e6a0d27c66d4d46ba62655744da0c7f'));
    Map data3 = jsonDecode(response3.body);
    List value3 = data3['extendedIngredients'];
    var l3 = data3['image'];
    var n3 = value3.length;
    var name3 = (data3['title']);
    List<String> value32 = <String>[];
    for(var integer=0;integer<n3;integer++){
      Map value31 = value3[integer];
      value32.insert(integer, value31['name']);
    }
    Response response4 = await get(Uri.parse('https://api.spoonacular.com/recipes/514303/information?includeNutrition=false&apiKey=1e6a0d27c66d4d46ba62655744da0c7f'));
    Map data4 = jsonDecode(response4.body);
    List value4 = data4['extendedIngredients'];
    var l4 = data4['image'];
    var n4 = value4.length;
    var name4 = (data4['title']);
    List<String> value42 = <String>[];
    for(var integer=0;integer<n4;integer++){
      Map value41 = value4[integer];
      value42.insert(integer, value41['name']);
    }
    Response response5 = await get(Uri.parse('https://api.spoonacular.com/recipes/898201/information?includeNutrition=false&apiKey=1e6a0d27c66d4d46ba62655744da0c7f'));
    Map data5 = jsonDecode(response5.body);
    List value5 = data5['extendedIngredients'];
    var l5 = data5['image'];
    var n5 = value5.length;
    var name5 = (data5['title']);
    List<String> value52 = <String>[];
    for(var integer=0;integer<n5;integer++){
      Map value51 = value5[integer];
      value52.insert(integer, value51['name']);
    }
    Response response6 = await get(Uri.parse('https://api.spoonacular.com/recipes/528863/information?includeNutrition=false&apiKey=1e6a0d27c66d4d46ba62655744da0c7f'));
    Map data6 = jsonDecode(response6.body);
    List value6 = data6['extendedIngredients'];
    var l6 = data6['image'];
    var n6 = value6.length;
    var name6 = (data6['title']);
    List<String> value62 = <String>[];
    for(var integer=0;integer<n6;integer++){
      Map value61 = value6[integer];
      value62.insert(integer, value61['name']);
    }
    Response response7 = await get(Uri.parse('https://api.spoonacular.com/recipes/247529/information?includeNutrition=false&apiKey=1e6a0d27c66d4d46ba62655744da0c7f'));
    Map data7 = jsonDecode(response7.body);
    List value7 = data7['extendedIngredients'];
    var l7 = data7['image'];
    var n7 = value7.length;
    var name7 = (data7['title']);
    List<String> value72 = <String>[];
    for(var integer=0;integer<n7;integer++){
      Map value71 = value7[integer];
      value72.insert(integer, value71['name']);
    }
    Response response8 = await get(Uri.parse('https://api.spoonacular.com/recipes/32023/information?includeNutrition=false&apiKey=1e6a0d27c66d4d46ba62655744da0c7f'));
    Map data8 = jsonDecode(response8.body);
    List value8 = data8['extendedIngredients'];
    var l8 = data8['image'];
    var n8 = value8.length;
    var name8 = (data8['title']);
    List<String> value82 = <String>[];
    for(var integer=0;integer<n8;integer++){
      Map value81 = value8[integer];
      value82.insert(integer, value81['name']);
    }
    Response response9 = await get(Uri.parse('https://api.spoonacular.com/recipes/1605941/information?includeNutrition=false&apiKey=1e6a0d27c66d4d46ba62655744da0c7f'));
    Map data9 = jsonDecode(response9.body);
    List value9 = data9['extendedIngredients'];
    var l9 = data9['image'];
    var n9 = value9.length;
    var name9 = (data9['title']);
    List<String> value92 = <String>[];
    for(var integer=0;integer<n9;integer++){
      Map value91 = value9[integer];
      value92.insert(integer, value91['name']);
    }
    Response response10 = await get(Uri.parse('https://api.spoonacular.com/recipes/195842/information?includeNutrition=false&apiKey=1e6a0d27c66d4d46ba62655744da0c7f'));
    Map data10 = jsonDecode(response10.body);
    List value10 = data10['extendedIngredients'];
    var l10 = data10['image'];
    var n10 = value10.length;
    var name10 = (data10['title']);
    List<String> value102 = <String>[];
    for(var integer=0;integer<n10;integer++){
      Map value101 = value10[integer];
      value102.insert(integer, value101['name']);
    }
    List<String> i = [l1,l2,l3,l4,l5,l6,l7,l8,l9,l10];
    List<String> name = [name1,name2,name3,name4,name5,name6,name7,name8,name9,name10];
    List<Datalist> total = [
      Datalist(name1, l1),
      Datalist(name2, l2),
      Datalist(name3, l3),
      Datalist(name4, l4),
      Datalist(name5, l5),
      Datalist(name6, l6),
      Datalist(name7, l7),
      Datalist(name8, l8),
      Datalist(name9, l9),
      Datalist(name10, l10)
    ];
  }
}