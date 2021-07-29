import 'package:flutter/material.dart';
import 'package:sigas_fuel/components/side_menu/components/mycompany.dart';
import 'package:sigas_fuel/constants.dart';
import 'package:flutter_svg/svg.dart';
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
                        // Skills(),
                        SizedBox(height: defaultPadding),
                        // Coding(),
                        // Knowledges(),
                        // Divider(),
                        SizedBox(height: defaultPadding / 2),
                        TextButton(
                          onPressed: () {},
                          child: FittedBox(
                            child: Row(
                              children: [
                                Text(
                                  "Logout",
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .color,
                                  ),
                                ),
                                SizedBox(width: defaultPadding / 2),
                                SvgPicture.asset("assets/icons/download.svg")
                              ],
                            ),
                          ),
                        ),
                        // Container(
                        //   margin: EdgeInsets.only(top: defaultPadding),
                        //   color: sideMenuSecColor,
                        //   child: Row(
                        //     children: [
                        //       Spacer(),
                        //       IconButton(
                        //         onPressed: () {},
                        //         icon: SvgPicture.asset(
                        //             "assets/icons/linkedin.svg"),
                        //       ),
                        //       IconButton(
                        //         onPressed: () {},
                        //         icon:
                        //             SvgPicture.asset("assets/icons/github.svg"),
                        //       ),
                        //       IconButton(
                        //         onPressed: () {},
                        //         icon: SvgPicture.asset(
                        //             "assets/icons/twitter.svg"),
                        //       ),
                        //       Spacer(),
                        //     ],
                        //   ),
                        // ),
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
