import 'package:flutter/material.dart';
import 'package:sigas_fuel/Screens/menu_buy/components/header.dart';
import 'package:sigas_fuel/Screens/menu_buy/components/menu_icon.dart';
// import 'package:sigas_fuel/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: <Widget>[
          Header(),
          ServiceMenu(),
        ],
      ),
    );
  }
}
