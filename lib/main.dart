import 'package:flutter/material.dart';
import 'package:sigas_fuel/Screens/Welcome/welcome_screen.dart';
import 'package:sigas_fuel/constants.dart';
import 'package:sigas_fuel/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sigas Fuel',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: WelcomeScreen.routeName,
      routes: routes,
    );
  }
}
