import 'package:flutter/material.dart';
import 'package:sigas_fuel/constants.dart';

class RoundedButtonProdList extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButtonProdList({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 75,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: SizedBox(
          height: 75,
          child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 239, 0, 8),
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
            onPressed: press,
            child: Text(text, style: TextStyle(color: textColor)),
          ),
        ),
      ),
    );
  }
}
