
import 'package:flutter/widgets.dart';

class Car{
  int id;
  String description;
  String mileage;
  String publish_on;
  String picture;
  String about;
  String car_model;
  String car_gear;
  String car_price;
  Car({this.id,this.description,this.mileage,this.publish_on,this.picture,this.about,this.car_model,this.car_gear,this.car_price});

  factory Car.fromJson(Map<String, dynamic>json){
    return Car(
      id : json['id'],
      description: json['description'],
      mileage: json['milage'],
      publish_on: json['publish_on'],
      picture : json['picture'],
      about: json['about'],
      car_model: json['car_model'],
      car_gear: json['car_gear'],
      car_price: json['car_price'],
    );
  }
}