import 'package:flutter/material.dart';
import 'package:sigas_fuel/Screens/Home/home_screen.dart';
import 'package:sigas_fuel/Screens/Login/components/background.dart';
import 'package:sigas_fuel/Screens/Signup/signup_screen.dart';
import 'package:sigas_fuel/components/already_have_an_account_acheck.dart';
import 'package:sigas_fuel/components/rounded_button_login.dart';
import 'package:sigas_fuel/components/rounded_input_field.dart';
import 'package:sigas_fuel/components/rounded_password_field.dart';
import 'package:sigas_fuel/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/sigaslogo.png",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButtonLogin(
              text: "LOGIN",
              color: kPrimaryLightColor,
              textColor: Colors.white,
              press: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }));
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
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
