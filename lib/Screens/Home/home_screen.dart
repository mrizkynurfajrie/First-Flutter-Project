import 'package:flutter/material.dart';
import 'package:sigas_fuel/Screens/Home/components/appbar.dart';
import 'package:sigas_fuel/Screens/Home/components/body.dart';
import 'package:sigas_fuel/components/BottomNavBar.dart';
import 'package:sigas_fuel/components/side_menu/side_menu.dart';
import 'package:sigas_fuel/constants.dart';
import 'package:sigas_fuel/enums.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
  static String routeName = "/Home";
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bckgrndColor,
      appBar: appbarHome(),
      drawer: SideMenu(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Body(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   static String routeName = "/home_screen";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: bckgrndColor,
//       appBar: appbarHome(),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: <Widget>[
//             Body(),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BotNavBar(),
//     );
//   }
// }
