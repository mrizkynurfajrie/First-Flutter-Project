import 'package:flutter/material.dart';
import 'package:sigas_fuel/Screens/products/components/appbar.dart';
import 'package:sigas_fuel/Screens/products/components/body.dart';
import 'package:sigas_fuel/constants.dart';

class PriceCheckScreen extends StatefulWidget {
  @override
  _PriceCheckScreenState createState() => _PriceCheckScreenState();
  static String routeName = "/products";
}

class _PriceCheckScreenState extends State<PriceCheckScreen> {
  int curridx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bckgrndColor,
      appBar: appbar(),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Body(),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              children: [
                Container(
                  child: Align(
                    child: Text(
                      "© 2021 Sigas Fuel",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    alignment: Alignment.center,
                  ),
                  height: 50,
                  width: double.infinity,
                  color: RedSigasColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
