import 'package:flutter/material.dart';
import 'package:sigas_fuel/Screens/products/products.dart';
import 'package:sigas_fuel/Screens/menu_buy/menu_buy.dart';

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
            spacing: 35,
            runSpacing: 20,
            children: <Widget>[
              ServiceBtn(
                imgpath: "assets/icons/price.png",
                text: "Products",
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PriceCheckScreen();
                  }));
                },
              ),
              ServiceBtn(
                imgpath: "assets/icons/buy.png",
                text: "Buy",
                press: () {
                  Navigator.pushNamed(context, MenuBuyScreen.routeName);
                },
              ),
              ServiceBtn(
                imgpath: "assets/icons/office.png",
                text: "My Company",
                press: () {},
              )
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
            width: 49,
            height: 49,
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
