import 'package:flutter/material.dart';

import './product_manage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('YOLO'),
        ),
        body: ProductManager(),
      ),
    );
  }
}
