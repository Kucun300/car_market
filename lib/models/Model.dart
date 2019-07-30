
import 'package:flutter/widgets.dart';

class Car{
  String description;
  String mileage;
  String publish_on;
  String about;
  String car_model;
  String car_gear;
  String car_price;
  Car(this.description,this.mileage,this.publish_on,this.about,this.car_model,this.car_gear,this.car_price);

  // factory Car.fromJson(Map<String, dynamic>json){
  //   return Car(
  //     description: json['description'],
  //     mileage: json['milage'],
  //     publish_on: json['publish_on'],
  //     about: json['about'],
  //     car_model: json['car_model'],
  //     car_gear: json['car_gear'],
  //     car_price: json['car_price'],
  //   );
  //}
}