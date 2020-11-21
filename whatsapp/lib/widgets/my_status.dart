import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget myStatus(BuildContext context) {
  return Container(
      height: 50,
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "My Status",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Today, 15:00",
                style: TextStyle(color: Colors.grey[600]),
              )
            ],
          ),
          Expanded(
              child: Container(
            alignment: Alignment.centerRight,
            child: IconButton(
              icon: Icon(Icons.more_horiz_outlined),
              onPressed: () {},
            ),
          ))
        ],
      ));
}
