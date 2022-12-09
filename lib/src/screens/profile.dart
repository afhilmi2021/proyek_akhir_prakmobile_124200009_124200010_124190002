import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => new _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orange,
        leading: Icon(Icons.coffee),
        title: Text('Drink Me | Member'),
      ),
      body: SingleChildScrollView(
      child: new Column(
       crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Image.asset(
            "wandira.png",
            width: 200,
            height: 200,
          ),
          new Text(
            "Nama : Ayuwandira Yuda Kartika",
            style: new TextStyle(fontSize: 20.0, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          new Text(
            "Nim : 124200009",
            style: new TextStyle(fontSize: 20.0, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          new Image.asset(
            "Hilmi.png",
            width: 200,
            height: 200,
          ),
          new Text(
            "Nama : Ahmad Fauzan Hilmi",
            style: new TextStyle(fontSize: 20.0, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          new Text(
            "Nama : 12420010",
            style: new TextStyle(fontSize: 20.0, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          new Image.asset(
            "inge.png",
            width: 200,
            height: 200,
          ),
          new Text(
            "Nama : Inge Dwi Pratiwi",
            style: new TextStyle(fontSize: 20.0, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          new Text(
            "Nama : 124190002",
            style: new TextStyle(fontSize: 20.0, color: Colors.black),
            textAlign: TextAlign.center,
          ),       ],
      ),
      ),
    );
  }
}