import 'package:flutter/material.dart';
import 'Add.dart';
import 'market.dart';
import 'models/Model.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[900],
      appBar:  new AppBar(
        title: Text('Car Market'),
        backgroundColor: Colors.indigo[900],
      ),drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Car Mrket'),
              accountEmail: new Text('for contact admin@admin.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('https://www.staticwhich.co.uk/media/images/adhoc/cars---do-not-delete-473727.jpg'),
              ),
            ),
            new ListTile(
              title: new Text('Add Car'),
              onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Add();
                  }));
                },
            ),
            new ListTile(
              title: new Text('Market'),
              onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Market(null);
                  }));
                },
            ),
          ],
        ),
      ),
      
      body: Center(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              
              Text('Welcome to Car Market', style: TextStyle(fontSize:20),),
              SizedBox(
                height: 20,
                width: 300,
              ),
              RaisedButton(
                child: Text('sheel wdy add'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Add();
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
