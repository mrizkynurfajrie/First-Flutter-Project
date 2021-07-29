import 'package:flutter/material.dart';
import 'package:sigas_fuel/constants.dart';

AppBar appbar() {
  return AppBar(
    backgroundColor: RedSigasColor,
    elevation: 1.0,
    centerTitle: true,
    title: Text("Products",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        )),
  );
}
