import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct}) {
    print('[ProductManager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProductManager Widget] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    print('[ProductManager Sate] initState()');
    if(widget.startingProduct != null){
      _products.add(widget.startingProduct);
    }

    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[ProductManager Sate] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(String product){
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager Sate] build()');
    // TODO: implement build
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct)
        ), //Container
        //Container(height : 300, child : Products(_products))
        Expanded(child : Products(_products))
      ], //children
    ); //Column;
  }
}
