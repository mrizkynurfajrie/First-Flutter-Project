import 'package:flutter/material.dart';
import 'package:sigas_fuel/components/rounded_button.dart';
import 'package:sigas_fuel/components/side_menu/components/mycompany.dart';
import 'package:sigas_fuel/constants.dart';
import 'package:sigas_fuel/components/side_menu/components/area_info_text.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              CompanyInfo(),
              Container(
                color: sideMenuSecColor,
                child: Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(defaultPadding),
                    child: Column(
                      children: [
                        AreaInfoText(
                          title: "Email",
                          text: "admin@indoteknokarya.com",
                        ),
                        AreaInfoText(
                          title: "Name",
                          text: "Moh. Heri Bin Eko Sumaranto",
                        ),
                        AreaInfoText(
                          title: "Telephone",
                          text: "05412924221",
                        ),
                        AreaInfoText(
                          title: "Address",
                          text:
                              "Jl. Suryanata Perum Bukit Pinang Blok C1 No. 52",
                        ),
                        SizedBox(height: defaultPadding * 3),
                        SizedBox(height: defaultPadding / 2),
                        RoundedButton(
                          text: "Close",
                          textColor: Colors.white,
                          color: RedSigasColor,
                          fontsize: 16,
                          press: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
