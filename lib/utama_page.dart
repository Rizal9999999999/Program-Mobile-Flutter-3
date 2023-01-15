import 'package:flutter/material.dart';
import 'package:pratikum3_1461900054/Home_page.dart';
import 'package:pratikum3_1461900054/second_page.dart';
import 'package:pratikum3_1461900054/main.dart';

class UtamaPage extends StatelessWidget {
  static String tag = 'utama-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Dashboard"),
          backgroundColor: Colors.lightGreen[700],
        ),
        backgroundColor: Colors.lightGreen[100],
        drawer: new Drawer(
            child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text(
                "Rizal Prambudi",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              accountEmail: new Text("NBI 1461900054"),
              decoration: new BoxDecoration(color: Colors.lightGreen),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profil"),
            ),
            ListTile(
              leading: Icon(Icons.vpn_key),
              title: Text("Ubah Password"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Tentang"),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Keluar"),
            ),
          ],
        )),
        body: Container(
            padding: EdgeInsets.all(30.0),
            child: GridView.count(crossAxisCount: 2, children: <Widget>[
              Card(
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    splashColor: Colors.green,
                    child: Center(
                        child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.book, size: 70.0),
                        Text("Cerita Kancil",
                            style: new TextStyle(fontSize: 17.0))
                      ],
                    ))),
              ),
              Card(
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondPage(),
                        ),
                      );
                    },
                    splashColor: Colors.green,
                    child: Center(
                        child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.book, size: 70.0),
                        Text("Cerita Malin Kundang",
                            style: new TextStyle(fontSize: 17.0))
                      ],
                    ))), ),
            ])));
  }
}
