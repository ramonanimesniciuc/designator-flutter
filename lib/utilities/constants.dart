import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final kHintTextStyle = TextStyle(
  color: Colors.teal[900],
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Colors.red[700],
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  // borderRadius: BorderRadiusDirectional.circular(20),
    border:Border.all(color:Colors.teal[700],width: 400),
    gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [Colors.teal[400],Colors.teal[300],Colors.teal[200],Colors.teal[200],Colors.teal[100],Colors.teal[50], Colors.red[100]]));