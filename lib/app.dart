import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.limeAccent[100],
        appBar: AppBar(
          title: const Text('simple application'),
          backgroundColor: Colors.blue[900],
        ),
        body:Center(
          child: Container(
            color:  Colors.orange,
            child:const Text(
                'moumen hamoudi',
              style: TextStyle(
                fontSize: 38.0,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}