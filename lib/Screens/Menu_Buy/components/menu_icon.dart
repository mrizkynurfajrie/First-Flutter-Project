import 'package:flutter/material.dart';
import 'package:sigas_fuel/Screens/menu_buy/menu_buy_fuelstation/menu_fuelstation.dart';

class ServiceMenu extends StatelessWidget {
  const ServiceMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(
          top: 18,
        ),
        decoration: BoxDecoration(color: Colors.white),
        child: Align(
          alignment: AlignmentDirectional.topCenter,
          child: Wrap(
            spacing: 85,
            runSpacing: 20,
            children: <Widget>[
              ServiceBtn(
                imgpath: "assets/icons/fuelstation.png",
                text: "Fuel Station",
                press: () {
                  Navigator.pushNamed(
                      context, MenuFuelStationsScreen.routeName);
                },
              ),
              ServiceBtn(
                imgpath: "assets/icons/transportir.png",
                text: "Transportir",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceBtn extends StatelessWidget {
  final String imgpath;
  final String text;
  final Function press;

  const ServiceBtn({
    Key key,
    this.imgpath,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: press,
          behavior: HitTestBehavior.translucent,
          child: Container(
            width: 75,
            height: 75,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey[100], width: 1.5),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Image.asset(
              imgpath,
            ),
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyText1,
        )
      ],
    );
  }
}
