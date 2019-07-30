import 'package:flutter/material.dart';
import 'Home.dart';
import 'market.dart';
import 'models/Model.dart';


class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  TextEditingController descriptionController = TextEditingController();
  TextEditingController mileageController = TextEditingController();
  TextEditingController aboutController = TextEditingController();
  TextEditingController car_modelController = TextEditingController();
  TextEditingController car_gearController = TextEditingController();
  TextEditingController car_priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Car'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: descriptionController,
            decoration: InputDecoration(
              labelText: 'Enter description',
              fillColor: Colors.white,
              filled: true,
            ),
          ),
          TextField(
            controller: mileageController,
            decoration: InputDecoration(
              labelText: 'Enter mileage',
              fillColor: Colors.white,
              filled: true,
            ),
          ),
          TextField(
            controller: aboutController,
            decoration: InputDecoration(
              labelText: 'About Car',
              fillColor: Colors.white,
              filled: true,
            ),
          ),
          TextField(
            controller: car_modelController,
            decoration: InputDecoration(
              labelText: 'Enter Car Model',
              fillColor: Colors.white,
              filled: true,
            ),
          ),
          TextField(
            controller: car_gearController,
            decoration: InputDecoration(
              labelText: 'Enter Car Gear',
              fillColor: Colors.white,
              filled: true,
            ),
          ),
          TextField(
            controller: car_priceController,
            decoration: InputDecoration(
              labelText: 'Enter Car Price',
              fillColor: Colors.white,
              filled: true,
            ),
          ),
          RaisedButton(
            child: Text('Add Car'),
            onPressed: (){
              var description = descriptionController.text;
              var mileage = mileageController.text;
              var about = aboutController.text;
              var car_model = car_modelController.text;
              var car_gear = car_gearController.text;
              var car_price = car_priceController.text;
              Car car =Car(description,mileage,DateTime.now().toString(),about,car_model,car_gear,car_price);
              Navigator.push(context,MaterialPageRoute(builder: (context){
                return Market(car);
              }));
            },
          ),
        ],
      ),
    );
  }
}