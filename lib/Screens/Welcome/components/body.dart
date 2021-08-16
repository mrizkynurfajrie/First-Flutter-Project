import 'package:flutter/material.dart';
import 'package:sigas_fuel/Screens/Login/login_screen.dart';
import 'package:sigas_fuel/Screens/Signup/signup_screen.dart';
import 'package:sigas_fuel/Screens/Welcome/components/background.dart';
import 'package:sigas_fuel/components/rounded_button.dart';
import 'package:sigas_fuel/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(
            //   "WELCOME TO SIGAS",
            //   style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 25,
            //       color: RedSigasColor),
            // ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/sigaslogo.png",
              height: size.height * 0.25,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "Sign In",
              press: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
            ),
            RoundedButton(
              text: "Sign Up",
              color: kPrimaryLightColor,
              textColor: Colors.white,
              press: () {
                Navigator.pushNamed(context, SignUpScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
