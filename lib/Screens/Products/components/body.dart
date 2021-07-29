import 'package:flutter/material.dart';
import 'package:sigas_fuel/Screens/products/components/product_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: <Widget>[ProductList()],
      ),
    );
  }
}
