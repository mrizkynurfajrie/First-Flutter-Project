import 'package:flutter/material.dart';

class CompanyInfo extends StatelessWidget {
  const CompanyInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/sigasprofile.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white70,
              backgroundImage: AssetImage("assets/images/inteklogo125.png"),
            ),
            Spacer(),
            Stack(
              children: <Widget>[
                Text(
                  "PT. INDO TEKNO KARYA",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Colors.black,
                  ),
                ),
                Text(
                  "PT. INDO TEKNO KARYA",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
