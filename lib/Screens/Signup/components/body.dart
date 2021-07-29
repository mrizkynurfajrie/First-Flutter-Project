import 'package:flutter/material.dart';
import 'package:sigas_fuel/Screens/Login/login_screen.dart';
import 'package:sigas_fuel/Screens/Signup/components/background.dart';
import 'package:sigas_fuel/components/already_have_an_account_acheck.dart';
import 'package:sigas_fuel/components/rounded_button.dart';
import 'package:sigas_fuel/components/rounded_input_email.dart';
import 'package:sigas_fuel/components/rounded_input_field.dart';
import 'package:sigas_fuel/components/rounded_input_phone.dart';
import 'package:sigas_fuel/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.01),
            Image.asset(
              "assets/images/sigaslogo.png",
              height: size.height * 0.25,
            ),
            RoundedInputField(
              hintText: "Fullname",
              onChanged: (value) {},
            ),
            RoundedInputEmail(
              hintText: "Email",
              onChanged: (value) {},
            ),
            RoundedInputPhone(
              hintText: "Phone Number",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
