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
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.indigo[900],
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                color: Colors.brown,
                child: Column(
                  children: <Widget>[
                    Text('description: ${widget.car.description}'),
                    Text('${widget.car.mileage}'),
                    Text('${widget.car.publish_on}'),
                    Text('${widget.car.about}'),
                    Text('${widget.car.car_model}'),
                    Text('${widget.car.car_gear}'),
                    Text('${widget.car.car_price}'),
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
