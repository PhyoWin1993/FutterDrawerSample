import 'package:draw/drawer.dart';
import 'package:draw/home.dart';
import 'package:draw/logout.dart';
import 'package:draw/profile.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List<Widget> glit = [Homes(), Profile(), Logout()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Tester"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      drawer: Dw(
        onTap: (context, i) {
          setState(() {
            index = i;
          });
        },
      ),
      body: glit[index],
    );
  }
}
