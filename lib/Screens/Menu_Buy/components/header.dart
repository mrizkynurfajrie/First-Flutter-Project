import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.asset("assets/images/sigas_fuel_header.png"),
      ),

      // decoration: BorderRadius.circular(5),
      // child: Image.asset("assets/images/sigas_fuel_header.png"),
    );
  }
}
