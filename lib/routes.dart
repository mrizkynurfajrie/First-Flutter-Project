import 'package:flutter/widgets.dart';
import 'package:sigas_fuel/Screens/Home/home_screen.dart';
import 'package:sigas_fuel/Screens/Login/login_screen.dart';
import 'package:sigas_fuel/Screens/products/products.dart';
import 'package:sigas_fuel/Screens/Signup/signup_screen.dart';
import 'package:sigas_fuel/Screens/Welcome/welcome_screen.dart';
import 'package:sigas_fuel/Screens/menu_buy/menu_buy.dart';
import 'package:sigas_fuel/Screens/menu_buy/menu_buy_fuelstation/menu_fuelstation.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  PriceCheckScreen.routeName: (context) => PriceCheckScreen(),
  MenuBuyScreen.routeName: (context) => MenuBuyScreen(),
  MenuFuelStationsScreen.routeName: (context) => MenuFuelStationsScreen(),
};
