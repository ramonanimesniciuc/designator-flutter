import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:designator/src/ui/design-page/deisigns-page-list.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.teal[50],Colors.teal[100],Colors.teal[50],Colors.teal[50],Colors.teal[100],Colors.teal[50], Colors.red[100]])),
              child: Column(
                children: [
                  Image.asset('assets/brand/Designator.png'),
                  FlatButton(
                    color: Colors.teal[400],
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.redAccent[200],
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DesignsPage()));
                    },
                    child: Text(
                      "Start",
                      style: TextStyle(fontSize: 20.0,fontFamily:'Quicksand'),
                    ),
                  )

                ],
              ),
            )));
  }
}



