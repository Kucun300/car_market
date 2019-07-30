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
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_box , size: 70,),
            title: Text('${widget.car.description}',style: TextStyle(fontSize: 24,color: Colors.blue,),),
            subtitle: Text('${widget.car.about}' , style:TextStyle(color: Colors.red),),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context){
                return detailes(widget.car);
              }));
            },
          ),
        ],
      )
    );
  }
}
