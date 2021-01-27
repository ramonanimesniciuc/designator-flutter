import 'dart:convert';
import 'package:designator/src/models/user.model.dart';
import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  final User user;
  UserProfileScreen({Key key,@required this.user}) : super(key:key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.teal[50],Colors.teal[100],Colors.teal[50],Colors.teal[50],Colors.teal[100],Colors.teal[50], Colors.red[100]])),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(50),child:Image.asset('assets/images/user-profile.png',height: 100,width: 100,fit: BoxFit.fitWidth) ,),
                  RichText(
                    text: TextSpan(
                      text: 'Welcome back ',
                      style:TextStyle(
                          color: Colors.teal[700], fontSize: 18),
                      children: <TextSpan>[
                        TextSpan(text: user.username, style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: ' !'),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Your current points amount is: ',
                      style:TextStyle(
                          color: Colors.red[700], fontSize: 18),
                      children: <TextSpan>[
                        TextSpan(text: user.points.toString(), style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: ' points .'),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}