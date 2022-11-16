import 'package:flutter/material.dart';
import  'dart:math';

class MyBody extends StatefulWidget {
  @override
  createState() => new MyBodyState();
}

class MyBodyState extends State<MyBody> {
  List<String> _array = [];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(itemBuilder: (context, index){


      new Divider();
      int result  = 2;
      for (int i = 1; i< index; i++){
        result = result * 2;
      }
      if (index == 0){
        result = 1;
      }

      return new ListTile(title: new Text('2 в степени $index: ' + result.toString()));
    });
  }
}

void main() =>  runApp(
    new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(body: new Center(child: new MyBody(),))
    )
);