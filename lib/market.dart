import 'dart:convert';
import 'package:car_market/Home.dart';
import 'package:flutter/material.dart';
import 'Add.dart';
import 'models/Model.dart';
import 'package:http/http.dart' as http;
import 'detailes.dart';

class Market extends StatefulWidget {
  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> {
  var cars = new List();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
            appBar: AppBar(
              title: Text('Car Market'),
              backgroundColor: Color.fromRGBO(0, 39, 78, 0.7),
            ),
            body: ListView.builder(
              itemCount: cars.length,
              itemBuilder: (context, index) {
                return ListTile(
                  
                  title: Text(cars[index].description,style: TextStyle(fontSize: 25),),
                  subtitle: Text(cars[index].about,style: TextStyle(fontSize: 15),),
                  trailing: CircleAvatar(
                    backgroundImage: new NetworkImage(cars[index].picture),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return detailes(cars[index]);
                    }));
                  },
                );
              },
            )),
      ],
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  void getData() async {
    http.Response response =
        await http.get('http://kucun300.pythonanywhere.com/api/Cars/');

    if (response.statusCode == 200) {
      String data = response.body;
      print(data);
      setState(() {
        var decodeData = jsonDecode(data);
        cars = decodeData.map((model) => Car.fromJson(model)).toList();
      });
    } else
      print(response.statusCode);
  }
}
