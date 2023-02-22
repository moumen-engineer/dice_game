import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar( //AppBar: widget ( the orange word ) |appBar: property
          title: const Text('welcome to moumen'),
          backgroundColor: Colors.red[600],  //change background of AppBar
        ),
        body: const Center(
          child: Image(
            image: AssetImage('images/idea.png'),
          ),
        ),
      ),
    ),
  );
}


