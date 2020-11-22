import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List items = [
  0,
  0,
  0,
  0,
  0,
  0,
  00,
  0,
  0,
  0,
  0,
  0,
  00,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0
];
List<Widget> recentStatus(BuildContext context) {
  return childWidgets();
}

childWidgets() {
  for (var i = 0; i < items.length; i++) {
    return Column( //TODO:ITERABLE WIDGETS
      children: [
        Container(
          height: 50,
          child: Row(children: [
            CircleAvatar(
              radius: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Eucy Test $i",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "12 Minutes ago",
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ]),
        ),
        Row(
          children: [
            SizedBox(width: 80),
            Expanded(
                child: Divider(
              color: Colors.grey[600],
            ))
          ],
        )
      ],
    );
  }
}
