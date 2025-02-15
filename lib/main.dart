import 'package:flutter/material.dart';

void main() {
 runApp(SuperApp());
}

class SuperApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'SuperApp',
      home: Scaffold(
        appBar: AppBar(
        title: Text('SuperApp'),
         ),
       body: Center(
        child: Text('Hello, SuperApp!'),
       ),
      ),
    );
  }
}


