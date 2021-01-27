import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DesignPageView extends StatelessWidget {
  // List cards = <Widget>[new CustomCard(),new CustomCard()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
        ),
        body: Center(
            child: Container(
                margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.teal[50],Colors.teal[100],Colors.teal[50],Colors.teal[50],Colors.teal[100],Colors.teal[50], Colors.red[100]])),
              child: Column(
                children:[
                  Image.asset('assets/images/src.ui.design-page-view.png',height: 300,width: 400,),
                  Row(
                    children: [
                      Padding(
                        padding:EdgeInsets.all(10),
                        child:Text('Paleta de culori dorita'),
                      ),
                      Padding(
                        padding:EdgeInsets.all(10),
                        child:Text('Timp alocat'),
                      ),
                      Padding(
                        padding:EdgeInsets.all(10),
                        child:Text('Doreste brief'),
                      ),                    ],
                  ),
                  Text('Descriere design modern / scandivan'),
                  Text('Buget alocat: 300 lei'),
                  OutlineButton(onPressed: null,child:Text('Design this'))
                ]

                ,
              ),
            )));
  }
}