import 'package:flutter/material.dart';
import 'package:sigas_fuel/components/text_field_container.dart';
import 'package:sigas_fuel/constants.dart';

class RoundedInputPhone extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputPhone({
    Key key,
    this.hintText,
    this.icon = Icons.phone,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
