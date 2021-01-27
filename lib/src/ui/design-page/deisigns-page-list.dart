import 'dart:ui';

import 'package:designator/src/models/user.model.dart';
import 'package:designator/src/ui/users/user-profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:designator/src/ui/design-page/design-page-view.dart';
import 'package:designator/src/ui/registration/login-form.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'add-design.dart';

class DesignsPage extends StatelessWidget {
  final User user;

  DesignsPage({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(''),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: user == null
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Icon(
                          Icons.login_outlined,
                          size: 26.0,
                        ),
                      )
                    : null),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: user != null
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddDesign()));
                        },
                        child: Icon(Icons.add_circle_sharp,
                            size: 28, color: Colors.tealAccent),
                      )
                    : null),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: user != null
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      UserProfileScreen(user: user)));
                        },
                        child: Image.asset('assets/images/user-profile.png',
                            height: 30, width: 30),
                      )
                    : null),
          ],
        ),
        body: Center(
            child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                Colors.teal[50],
                Colors.teal[100],
                Colors.teal[50],
                Colors.teal[50],
                Colors.teal[100],
                Colors.teal[50],
                Colors.red[100]
              ])),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  'assets/brand/logo.png',
                  height: 50,
                  width: 50,
                ),
              ),
              Expanded(
                child: ListView(
                  children: [new CustomCard()],
                ),
              )
            ],
          ),
        )));
  }
}

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DesignPageView()));
        },
        child: Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(7),
            child: Stack(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: Column(
                      children: [
                        designTitle(),
                        Text('Birou modern cu un cost de 400 lei')
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}

Widget designTitle() {
  return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Icon(
                Icons.home_outlined,
                color: Colors.red[300],
                size: 40,
              ),
              Text('Georgiana Popa')
            ],
          )));
}
