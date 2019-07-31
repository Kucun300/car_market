import 'package:car_market/Home.dart';
import 'package:flutter/material.dart';
import 'Add.dart';
import 'models/Model.dart';
import 'detailes.dart';

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
        backgroundColor: Colors.indigo[900],
      ),
      body: Container(
        color: Colors.red[900],
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 10),
              margin: EdgeInsets.all(20),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.account_box,
                  size: 70,
                ),
                title: Text(
                  '${widget.car.description}',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.indigo[900],
                  ),
                ),
                subtitle: Text(
                  '${widget.car.about}',
                  style: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return detailes(widget.car);
                  }));
                },
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Home();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
