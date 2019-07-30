import 'package:flutter/material.dart';
import 'Add.dart';
import 'market.dart';
import 'models/Model.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Market'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('sheel wdy add'),
            onPressed: () {
              Navigator.push(
                context,MaterialPageRoute(builder: (context){
                  return Add();
                }));
            },
          ),
        ],
      ),
    );
  }
}