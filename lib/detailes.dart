import 'package:car_market/Home.dart';
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
    return Stack(
      children: <Widget>[
        Image(
          image: AssetImage('images/webbackground.jpg'),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('Car Details'),
            backgroundColor: Color.fromRGBO(0, 39, 78, 0.7),
          ),
          body: Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.transparent,
            child: Column(
              children: <Widget>[
                Container(
                  width: 400,
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      new Image(
                        image: NetworkImage('${widget.car.picture}'),
                      ),
                      Text(
                        'Description: ${widget.car.description}',
                        style:
                            TextStyle(color: Colors.indigo[900], fontSize: 20),
                      ),
                      Text(
                        'Mileage: ${widget.car.mileage}',
                        style: TextStyle(color: Colors.indigo[900],fontSize: 20),
                      ),
                      Text(
                        'Published on: ${widget.car.publish_on}',
                        style:
                            TextStyle(color: Colors.indigo[900], fontSize: 20),
                      ),
                      Text(
                        'About: ${widget.car.about}',
                        style:
                            TextStyle(color: Colors.indigo[900], fontSize: 20),
                      ),
                      Text(
                        'Model: ${widget.car.car_model}',
                        style:
                            TextStyle(color: Colors.indigo[900], fontSize: 20),
                      ),
                      Text(
                        'Gear: ${widget.car.car_gear}',
                        style:
                            TextStyle(color: Colors.indigo[900], fontSize: 20),
                      ),
                      Text(
                        'Price: ${widget.car.car_price}',
                        style:
                            TextStyle(color: Colors.indigo[900], fontSize: 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                    color: Colors.indigo[900],
                    child: Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Home();
                      }));
                    })
              ],
            ),
          ),
        ),
      ],
    );
  }
}
