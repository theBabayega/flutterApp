import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget{
  final String myString;
  ProductManager({this.myString});
  @override
  State<StatefulWidget> createState(){
    return _ProductManagerState();
  }
}


class _ProductManagerState extends State<ProductManager> {
    final List<String> _products = [];
  @override
  void initState() {
    super.initState();
    if(widget.myString!=null){
    _products.add(widget.myString);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(children:[Container(
              margin: EdgeInsets.all(0),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    _products.add('lololol');
                  });
                },
                child: Text('add'),
              ),
            ),
            Expanded( child:Products(_products)),
            ]);
  }
}