import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget recentStatus(BuildContext context) {
  return Container(
    height: 50,
    child: Row(children: [
      CircleAvatar(
        radius: 30,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Eucy",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "12 Minutes ago",
            style: TextStyle(color: Colors.grey[600]),
          ),
        ],
      ),
    ]),
  );
}
