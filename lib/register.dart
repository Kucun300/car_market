import 'package:flutter/material.dart';
import 'package:car_market/Home.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logout'),
        backgroundColor: Colors.indigo[900],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.red[900],
        child: ListView(
          children: <Widget>[
            ListTile(
              title: TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            ListTile(
              title: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            ListTile(
              title: TextField(
                decoration: InputDecoration(
                  labelText: 'mobile number',
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            ListTile(
              title: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            ListTile(
              title: TextField(
                decoration: InputDecoration(
                  labelText: 'Password Again',
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
              child: Text('Logout', style: TextStyle(color: Colors.white),),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Home();
                })
                );
              }
              )
          ],
        ),
      ),
    );
  }
}