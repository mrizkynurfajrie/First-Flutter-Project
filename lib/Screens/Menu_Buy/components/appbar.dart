import 'package:flutter/material.dart';
import 'package:sigas_fuel/constants.dart';

AppBar appbarMenuBuy() {
  return AppBar(
    automaticallyImplyLeading: true,
    backgroundColor: RedSigasColor,
    elevation: 1.0,
    centerTitle: true,
    title: Text("Sigas Fuel",
        style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold)),
  );
}
