import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer:Drawer(
      
        child:Center(child: Text("Menu")) ,
      ),
     appBar: AppBar(
      title: Text('AgroRec'),

     ),
    body: Center(
      child: Text('Olá pora'),
    ),

    );
  }
}
