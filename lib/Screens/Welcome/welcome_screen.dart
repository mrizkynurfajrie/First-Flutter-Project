import 'package:flutter/material.dart';
import 'package:sigas_fuel/Screens/Welcome/components/body.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = "/Welcome";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
