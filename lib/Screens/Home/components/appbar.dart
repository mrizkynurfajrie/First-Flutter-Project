import 'package:flutter/material.dart';
import 'package:sigas_fuel/constants.dart';

AppBar appbarHome() {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: RedSigasColor,
    elevation: 1.0,
    centerTitle: true,
    title: Text("Sigas Fuel",
        style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic)),
    leading: Builder(
      builder: (context) => IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(Icons.person_sharp)),
    ),
  );
}
