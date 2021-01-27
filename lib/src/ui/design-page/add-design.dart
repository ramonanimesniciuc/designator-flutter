import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class AddDesign extends StatefulWidget {
  @override
  _DesignPageState createState() => _DesignPageState();
}

class _DesignPageState extends State<AddDesign> {
  double _budgetAllocated = 100;
  String description = '';
  String colorPallete = '';
  int _timeAllocated = 41;

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    final _formKey = GlobalKey<FormState>();
    // create some values
    Color pickerColor = Color(0xff443a49);
    Color currentColor = Color(0xff443a49);

// ValueChanged<Color> callback
    void changeColor(Color color) {
      setState(() => pickerColor = color);
    }
    return Scaffold(
        key: _formKey,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Enter the title of your project'),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Enter the description of your project'),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter the allocated budget'),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: ColorPicker(
                  pickerColor: pickerColor,
                  onColorChanged: changeColor,
                  showLabel: true,
                  pickerAreaHeightPercent: 0.3,
                )
              )
            ]));
  }
}
