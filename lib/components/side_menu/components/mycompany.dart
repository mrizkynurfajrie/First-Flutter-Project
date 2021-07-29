import 'package:flutter/material.dart';
import 'package:sigas_fuel/constants.dart';

class CompanyInfo extends StatelessWidget {
  const CompanyInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Stack(
        children: <Widget>[
          Image.asset("assets/images/sigasprofile.jpg"),
          Container(
            color: sideMenuPrimeColor,
            child: Column(
              children: [
                Spacer(flex: 2),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white70,
                  backgroundImage: AssetImage("assets/images/inteklogo125.png"),
                ),
                Spacer(),
                Text(
                  "PT. INDO TEKNO KARYA",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                Spacer(flex: 2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
