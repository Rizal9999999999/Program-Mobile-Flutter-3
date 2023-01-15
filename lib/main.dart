import 'package:flutter/material.dart';
import 'login_page.dart';
import 'utama_page.dart';
import 'home_page.dart';
import 'second_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
     UtamaPage.tag: (context) => UtamaPage(),
    HomePage.tag: (context) => HomePage(),
    SecondPage.tag: (context) => SecondPage(),
  };

  static var tag;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Learning',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
