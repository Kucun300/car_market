import 'package:flutter/material.dart';
import 'Add.dart';
import 'market.dart';
import 'models/Model.dart';
import 'Login.dart';
import 'Register.dart';

class Home extends StatelessWidget {
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
          appBar: new AppBar(
            title: Text('Car Market'),
            backgroundColor: Color.fromRGBO(0, 39, 78, 0.7),
          ),
          drawer: new Drawer(
            
            child: ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 39, 78, 0.7),
                  ),
                  accountName: new Text('Car Mrket'),
                  accountEmail: new Text('for contact admin@admin.com'),
                  currentAccountPicture: new CircleAvatar(
                    backgroundImage:
                        new NetworkImage('https://picsum.photos/200'),
                  ),
                ),
                new ListTile(
                  title: new Text('Market'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Market();
                    }));
                  },
                ),
                new ListTile(
                  title: new Text('Add Car'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Add();
                    }));
                  },
                ),
                new ListTile(
                  title: new Text('Login'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Login();
                    }));
                  },
                ),
                new ListTile(
                  title: new Text('Register'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Register();
                    }));
                  },
                ),
              ],
            ),
          ),
          body: Center(
            child: Container(
              color: Color.fromRGBO(255, 255, 255, 0.8),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Text(
                    'Welcome to Car Market',
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                  SizedBox(
                    height: 20,
                    width: 300,
                  ),
                  Text(
                      'Our website will let you see a lot of cars type by diffrent prices and quality also you can add a car you want to nesciunt? Deserunt tenetur vel maxime, dolore quaerat quos, nemo incidunt inventore corrupti esse, est magnam rerum cupiditate? Cupiditate vel hic blanditiis repudiandae officiis a non eum. Quasi ipsam non labore debitis adipisci. Veritatis porro eaque laboriosam.Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate sit soluta dolorum inventore est? Suscipit dolores molestias corporis atque culpa placeat aspernatur architecto voluptate molestiae fuga est, quos aliquam nobis minus, dicta saepe eius nulla? Assumenda praesentium esse maxime repellat iusto nisi alias recusandae.'),
                  Text(
                      'sellLorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem voluptates aspernatur illum? Repellat quae beatae temporibus repudiandae optio perspiciatis doloribus! Veniam quo sit totam maiores, enim ratione non qui'),
                  Text(
                      'repudiandae?Lorem ipsum, dolor sit amet consectetur adipisicing elit. Amet accusamus ut a vitae. Commodi omnis cumque quas. Ducimus aliquid recusandae architecto unde odit?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Minima, illum architecto consequuntur voluptatibus quae'),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
