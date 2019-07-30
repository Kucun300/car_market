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
      body: Center(
        child: Container(
          color: Colors.green,
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Text('Welcome to Car Market', style: TextStyle(fontSize:20),),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                child: Text('sheel wdy add'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Add();
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
