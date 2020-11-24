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
  0,
  "Name",
  "Another"
];
List<Widget> recentStatus(BuildContext context) {
  List<Widget> _childWidgets = [];
  for (var i = 0; i < items.length; i++) {
    _childWidgets.add(childWidgets(items[i]));
  }
  return _childWidgets;
}

childWidgets(i) {
  return Column(
    children: [
      Container(
        height: 50,
        child: Row(children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1602526433141-e6e2362e4dbf?ixlib=rb-1.2.1&ixid=MXwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
            ),
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
