import 'package:flutter/material.dart';
import 'package:sigas_fuel/constants.dart';

class RoundedButtonLogin extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButtonLogin({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: SizedBox(
          height: 50,
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
