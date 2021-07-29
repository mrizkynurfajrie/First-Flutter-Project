import 'package:flutter/material.dart';
import 'package:sigas_fuel/Screens/menu_buy/menu_buy_fuelstation/components/appbar.dart';
import 'package:sigas_fuel/Screens/menu_buy/menu_buy_fuelstation/components/body.dart';
import 'package:sigas_fuel/components/BottomNavBar.dart';
import 'package:sigas_fuel/constants.dart';
import 'package:sigas_fuel/enums.dart';

class MenuFuelStationsScreen extends StatefulWidget {
  @override
  _MenuFuelStationsScreenState createState() => _MenuFuelStationsScreenState();
  static String routeName = "/Menu_Buy/menu_buy_fuelstation";
}

class _MenuFuelStationsScreenState extends State<MenuFuelStationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bckgrndColor,
      appBar: appbar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Body(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
