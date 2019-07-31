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
                backgroundImage: new NetworkImage('https://picsum.photos/200'),
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
              Text('Our website will let you see a lot of cars type by diffrent prices and quality also you can add a car you want to sellLorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatem voluptates aspernatur illum? Repellat quae beatae temporibus repudiandae optio perspiciatis doloribus! Veniam quo sit totam maiores, enim ratione non qui repudiandae?Lorem ipsum, dolor sit amet consectetur adipisicing elit. Amet accusamus ut a vitae. Commodi omnis cumque quas. Ducimus aliquid recusandae architecto unde odit?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Minima, illum architecto consequuntur voluptatibus quae nesciunt? Deserunt tenetur vel maxime, dolore quaerat quos, nemo incidunt inventore corrupti esse, est magnam rerum cupiditate? Cupiditate vel hic blanditiis repudiandae officiis a non eum. Quasi ipsam non labore debitis adipisci. Veritatis porro eaque laboriosam.Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate sit soluta dolorum inventore est? Suscipit dolores molestias corporis atque culpa placeat aspernatur architecto voluptate molestiae fuga est, quos aliquam nobis minus, dicta saepe eius nulla? Assumenda praesentium esse maxime repellat iusto nisi alias recusandae.'),
            ],
          ),
        ),
      ),
    );
  }
}
