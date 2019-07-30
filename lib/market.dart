import 'package:car_market/Home.dart';
import 'package:flutter/material.dart';
import 'Add.dart';
import 'models/Model.dart';

class Market extends StatefulWidget {
  Car car;

  Market(this.car);

  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Market'),
      ),
      body: Column(
        children: <Widget>[
          Text('about ${widget.car.about}'),
          RaisedButton(
            child: Text('sheel wdy home'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Home();
              }));
            },
          )
        ],
      ),
    );
  }
}
