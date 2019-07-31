import 'package:car_market/Home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
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
                  labelText: 'Enter Username',
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            ListTile(
              title: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Password',
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
              child: Text('Login', style: TextStyle(color: Colors.white),),
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
