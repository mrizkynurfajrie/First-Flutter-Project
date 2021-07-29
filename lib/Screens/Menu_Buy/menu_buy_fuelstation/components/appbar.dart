import 'package:flutter/material.dart';
import 'package:sigas_fuel/constants.dart';

AppBar appbar() {
  return AppBar(
    automaticallyImplyLeading: true,
    backgroundColor: RedSigasColor,
    elevation: 1.0,
    centerTitle: true,
    title: Text("Fuel Station - Order",
        style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic)),
  );
}
