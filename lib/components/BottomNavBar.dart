import 'package:flutter/material.dart';
import 'package:sigas_fuel/Screens/Home/home_screen.dart';
import 'package:sigas_fuel/Screens/Welcome/welcome_screen.dart';
import 'package:sigas_fuel/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Home.svg",
                  height: 19,
                  width: 19,
                  color: MenuState.home == selectedMenu
                      ? RedSigasColor
                      : inActiveIconColor,
                ),
                onPressed: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                })),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/MyAccount.svg",
                  height: 19,
                  width: 19,
                  color: MenuState.adminsupp == selectedMenu
                      ? RedSigasColor
                      : inActiveIconColor,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/message.svg",
                  height: 19,
                  width: 19,
                  color: MenuState.notification == selectedMenu
                      ? RedSigasColor
                      : inActiveIconColor,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/logout.svg",
                  height: 19,
                  width: 19,
                  color: MenuState.logout == selectedMenu
                      ? RedSigasColor
                      : inActiveIconColor,
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        insetPadding: EdgeInsets.symmetric(vertical: 205),
                        title: Text("Logout"),
                        content: Column(
                          children: [
                            Text("Are You Sure Want To Logout?"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextButton(
                                  child: Text("Cancel"),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                TextButton(
                                  child: Text("Logout"),
                                  onPressed: () {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return WelcomeScreen();
                                    }));
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          )),
    );
  }
}


// class BotNavBar extends StatefulWidget {
//   @override
//   _BotNavBarState createState() => _BotNavBarState();
// }

// class _BotNavBarState extends State<BotNavBar> {
//   int curridx = 0;
//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       child: Container(
//         height: 46,
//         color: Colors.white,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[
//             iconBtnAppbar("assets/icons/Home.svg", "Home", 0),
//             iconBtnAppbar("assets/icons/Orders.svg", "Summary", 1),
//             iconBtnAppbar("assets/icons/message.svg", "Notification", 2),
//             iconBtnAppbar("assets/icons/logout.svg", "Logout", 3),
//           ],
//         ),
//       ),
//     );
//   }

//   GestureDetector iconBtnAppbar(String iconpath, String title, int index) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           curridx = index;
//         });
//       },
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           SvgPicture.asset(
//             iconpath,
//             height: 19,
//             color: curridx == index ? RedSigasColor : BottomIcon,
//           ),
//           SizedBox(
//             height: 3,
//           ),
//           Text(
//             title,
//             style: TextStyle(
//                 fontSize: 9,
//                 fontWeight:
//                     curridx == index ? FontWeight.w700 : FontWeight.w600,
//                 color: curridx == index ? RedSigasColor : BottomIcon),
//           )
//         ],
//       ),
//     );
//   }
// }
