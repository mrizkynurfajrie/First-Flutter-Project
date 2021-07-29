import 'package:flutter/material.dart';
import 'package:sigas_fuel/Screens/menu_buy/components/appbar.dart';
import 'package:sigas_fuel/Screens/menu_buy/components/body.dart';
import 'package:sigas_fuel/constants.dart';

class MenuBuyScreen extends StatefulWidget {
  @override
  _MenuBuyScreenState createState() => _MenuBuyScreenState();
  static String routeName = "/Menu_Buy";
}

class _MenuBuyScreenState extends State<MenuBuyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bckgrndColor,
      appBar: appbarMenuBuy(),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Body(),
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
