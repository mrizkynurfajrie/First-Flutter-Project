import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class AreaInfoText extends StatelessWidget {
  final String title;
  final String text;
  const AreaInfoText({
    Key key,
    this.title,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Text(
                title,
                style: TextStyle(color: Colors.black),
              ),
              flex: 1),
          Expanded(
            child: Text(
              text,
              overflow: TextOverflow.visible,
              maxLines: 3,
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }
}
