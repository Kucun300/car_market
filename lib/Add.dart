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
  TextEditingController pictureController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController car_priceController = TextEditingController();
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
            title: Text('Add Car'),
            backgroundColor: Color.fromRGBO(0, 39, 78, 0.7),
          ),
          body: Container(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: TextField(
                    controller: idController,
                    decoration: InputDecoration(
                      labelText: 'Enter Id',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                ListTile(
                  title: TextField(
                    controller: pictureController,
                    decoration: InputDecoration(
                      labelText: 'Enter picture URL',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                ListTile(
                  title: TextField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                      labelText: 'Enter description',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                ListTile(
                  title: TextField(
                    controller: mileageController,
                    decoration: InputDecoration(
                      labelText: 'Enter mileage',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                ListTile(
                  title: TextField(
                    controller: aboutController,
                    decoration: InputDecoration(
                      labelText: 'About Car',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                ListTile(
                  title: TextField(
                    controller: car_modelController,
                    decoration: InputDecoration(
                      labelText: 'Enter Car Model',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                ListTile(
                  title: TextField(
                    controller: car_gearController,
                    decoration: InputDecoration(
                      labelText: 'Enter Car Gear',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                ListTile(
                  title: TextField(
                    controller: car_priceController,
                    decoration: InputDecoration(
                      labelText: 'Enter Car Price',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  color: Colors.indigo[900],
                  child: Text(
                    'Add Car',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    // var id = idController.text;
                    // var description = descriptionController.text;
                    // var mileage = mileageController.text;
                    // var publish_on = DateTime.now().toString();
                    // var picture = pictureController.text;
                    // var about = aboutController.text;
                    // var car_model = car_modelController.text;
                    // var car_gear = car_gearController.text;
                    // var car_price = car_priceController.text;
                    // Car car = Car(id , description , mileage , publish_on , picture , about, car_model, car_gear, car_price);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Home();
                    }));
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
