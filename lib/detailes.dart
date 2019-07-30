import 'package:flutter/material.dart';
import 'models/Model.dart';

class detailes extends StatefulWidget {
  @override
  Car car;

  detailes(this.car);
  _detailesState createState() => _detailesState();
}

class _detailesState extends State<detailes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('details'),
        backgroundColor: Colors.indigo[900],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.red[900],
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Text('Description: ${widget.car.description}', style: TextStyle(color: Colors.indigo[900]),),
                    Text('Mileage: ${widget.car.mileage}', style: TextStyle(color: Colors.indigo[900]),),
                    Text('Published on: ${widget.car.publish_on}', style: TextStyle(color: Colors.indigo[900]),),
                    Text('About: ${widget.car.about}', style: TextStyle(color: Colors.indigo[900]),),
                    Text('Model: ${widget.car.car_model}', style: TextStyle(color: Colors.indigo[900]),),
                    Text('Gear: ${widget.car.car_gear}', style: TextStyle(color: Colors.indigo[900]),),
                    Text('Price: ${widget.car.car_price}', style: TextStyle(color: Colors.indigo[900]),),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
