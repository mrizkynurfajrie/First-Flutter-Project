import 'package:flutter/material.dart';

class BottomBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Container(
        child: Text("Bottom"),
        color: Colors.red,
      ),
    );
  }
}
